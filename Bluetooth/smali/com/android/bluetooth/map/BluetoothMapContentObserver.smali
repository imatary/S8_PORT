.class public Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;
    }
.end annotation


# static fields
.field static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

.field private static final ACTION_UPDATE_NOTIFICATION_ITEM:Ljava/lang/String; = "com.samsung.accessory.intent.action.UPDATE_NOTIFICATION_ITEM"

.field private static final CONVERT_MMS_TO_SMS_PART_COUNT:I = 0xa

.field private static final D:Z

.field public static final DELETED_THREAD_ID:I = -0x1

.field private static final EVENT_FILTER_CONVERSATION_CHANGED:J = 0x400L

.field private static final EVENT_FILTER_DELIVERY_FAILED:J = 0x40L

.field private static final EVENT_FILTER_DELIVERY_SUCCESS:J = 0x20L

.field private static final EVENT_FILTER_MEMORY_AVAILABLE:J = 0x100L

.field private static final EVENT_FILTER_MEMORY_FULL:J = 0x80L

.field private static final EVENT_FILTER_MESSAGE_DELETED:J = 0x2L

.field private static final EVENT_FILTER_MESSAGE_REMOVED:J = 0x2000L

.field private static final EVENT_FILTER_MESSAGE_SHIFT:J = 0x4L

.field private static final EVENT_FILTER_NEW_MESSAGE:J = 0x1L

.field private static final EVENT_FILTER_PARTICIPANT_CHATSTATE_CHANGED:J = 0x1000L

.field private static final EVENT_FILTER_PARTICIPANT_PRESENCE_CHANGED:J = 0x800L

.field private static final EVENT_FILTER_READ_STATUS_CHANGED:J = 0x200L

.field private static final EVENT_FILTER_SENDING_FAILED:J = 0x10L

.field private static final EVENT_FILTER_SENDING_SUCCESS:J = 0x8L

.field private static final EVENT_TYPE_CHAT_STATE:Ljava/lang/String; = "ParticipantChatStateChanged"

.field private static final EVENT_TYPE_CONVERSATION:Ljava/lang/String; = "ConversationChanged"

.field private static final EVENT_TYPE_DELETE:Ljava/lang/String; = "MessageDeleted"

.field private static final EVENT_TYPE_DELIVERY_FAILURE:Ljava/lang/String; = "DeliveryFailure"

.field private static final EVENT_TYPE_DELIVERY_SUCCESS:Ljava/lang/String; = "DeliverySuccess"

.field private static final EVENT_TYPE_NEW:Ljava/lang/String; = "NewMessage"

.field private static final EVENT_TYPE_PRESENCE:Ljava/lang/String; = "ParticipantPresenceChanged"

.field private static final EVENT_TYPE_READ_STATUS:Ljava/lang/String; = "ReadStatusChanged"

.field private static final EVENT_TYPE_REMOVED:Ljava/lang/String; = "MessageRemoved"

.field private static final EVENT_TYPE_SENDING_FAILURE:Ljava/lang/String; = "SendingFailure"

.field private static final EVENT_TYPE_SENDING_SUCCESS:Ljava/lang/String; = "SendingSuccess"

.field private static final EVENT_TYPE_SHIFT:Ljava/lang/String; = "MessageShift"

.field public static final EXTRA_MESSAGE_SENT_HANDLE:Ljava/lang/String; = "HANDLE"

.field public static final EXTRA_MESSAGE_SENT_MSG_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_MESSAGE_SENT_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_MESSAGE_SENT_RETRY:Ljava/lang/String; = "retry"

.field public static final EXTRA_MESSAGE_SENT_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final EXTRA_MESSAGE_SENT_TRANSPARENT:Ljava/lang/String; = "transparent"

.field public static final EXTRA_MESSAGE_SENT_URI:Ljava/lang/String; = "uri"

.field private static final FOLDER_MMS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOLDER_RCS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOLDER_SMS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field static final MMS_PROJECTION_SHORT:[Ljava/lang/String;

.field static final MMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field static final MSG_PROJECTION_SHORT:[Ljava/lang/String;

.field static final MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field static final MSG_PROJECTION_SHORT_EXT2:[Ljava/lang/String;

.field private static final NOTIFICATION_PROVIDER_ITEM_ID:Ljava/lang/String; = "NOTIFICATION_ITEM_ID"

.field private static final NOTIFICATION_PROVIDER_ITEM_URI:Ljava/lang/String; = "NOTIFICATION_ITEM_URI"

.field private static final NOTIFICATION_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "NOTIFICATION_PACKAGE_NAME"

.field private static PACKAGE_NAME_MESSAGING:Ljava/lang/String; = null

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field static final RCS_CHAT_PROJECTION:[Ljava/lang/String;

.field static final RCS_CHAT_PROJECTION_SHORT:[Ljava/lang/String;

.field static final RCS_CHAT_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field static final RCS_FT_PROJECTION:[Ljava/lang/String;

.field static final RCS_FT_PROJECTION_SHORT:[Ljava/lang/String;

.field static final RCS_FT_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field private static final SEC_EMAIL_BROADCAST_PERMISSION:Ljava/lang/String; = "com.sec.android.email.permission.EMAILBROADCAST"

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION_SHORT:[Ljava/lang/String;

.field static final SMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContentObserver"

.field private static final V:Z


# instance fields
.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private mAccount_id:Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private mCeBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;

.field private mContactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation
.end field

.field private mContactUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mEmailHandle:J

.field private mEmailSendFromClient:Z

.field private mEnableSmsMms:Z

.field private volatile mEventFilter:J

.field private mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mInitialized:Z

.field private mMapEventReportVersion:I

.field private mMapSupportedFeatures:I

.field private mMasId:I

.field private mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

.field private mMessageUri:Landroid/net/Uri;

.field private mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mMsgListMms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListMsg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListRcsChat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListRcsFt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListSms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private mObserverRegistered:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mPushMsgList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsChatUri:Landroid/net/Uri;

.field private mRcsFtUri:Landroid/net/Uri;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

.field private mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private mStorageUnlocked:Z

.field private mTransmitEvents:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    return v0
.end method

.method static synthetic -get1()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mStorageUnlocked:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEmailHandle:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEmailSendFromClient:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/map/BluetoothMapContentObserver;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEmailHandle:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEmailSendFromClient:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mStorageUnlocked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleContactListChanges(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChanges(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initMsgList()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->resendPendingMessages()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->PACKAGE_NAME_MESSAGING:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "address"

    aput-object v1, v0, v4

    const-string/jumbo v1, "body"

    aput-object v1, v0, v5

    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    const-string/jumbo v1, "read"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "status"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "locked"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "error_code"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "type"

    aput-object v1, v0, v4

    const-string/jumbo v1, "read"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "address"

    aput-object v1, v0, v4

    const-string/jumbo v1, "body"

    aput-object v1, v0, v5

    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    const-string/jumbo v1, "read"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "m_type"

    aput-object v1, v0, v4

    const-string/jumbo v1, "msg_box"

    aput-object v1, v0, v5

    const-string/jumbo v1, "read"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "m_type"

    aput-object v1, v0, v4

    const-string/jumbo v1, "msg_box"

    aput-object v1, v0, v5

    const-string/jumbo v1, "read"

    aput-object v1, v0, v6

    const-string/jumbo v1, "date"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sub"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "pri"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "address"

    aput-object v1, v0, v4

    const-string/jumbo v1, "body"

    aput-object v1, v0, v5

    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    const-string/jumbo v1, "read"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "status"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "locked"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_CHAT_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "read"

    aput-object v1, v0, v4

    const-string/jumbo v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_CHAT_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "address"

    aput-object v1, v0, v4

    const-string/jumbo v1, "body"

    aput-object v1, v0, v5

    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    const-string/jumbo v1, "read"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_CHAT_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "address"

    aput-object v1, v0, v4

    const-string/jumbo v1, "file_name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    const-string/jumbo v1, "read"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "status"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "locked"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_FT_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "read"

    aput-object v1, v0, v4

    const-string/jumbo v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_FT_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "address"

    aput-object v1, v0, v4

    const-string/jumbo v1, "file_name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "date"

    aput-object v1, v0, v6

    const-string/jumbo v1, "read"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_FT_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "mailboxKey"

    aput-object v1, v0, v3

    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v4

    const-string/jumbo v1, "flagLoaded"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "mailboxKey"

    aput-object v1, v0, v3

    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v4

    const-string/jumbo v1, "flagLoaded"

    aput-object v1, v0, v5

    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v6

    const-string/jumbo v1, "subject"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "fromList"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "importance"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "mailboxKey"

    aput-object v1, v0, v3

    const-string/jumbo v1, "flagRead"

    aput-object v1, v0, v4

    const-string/jumbo v1, "flagLoaded"

    aput-object v1, v0, v5

    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v6

    const-string/jumbo v1, "subject"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "fromList"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "importance"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "threadId"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "thread_name"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT2:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "inbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "draft"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "outbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "outbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "outbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "inbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "draft"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "outbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_RCS_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_RCS_MAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "inbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_RCS_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_RCS_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "draft"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_RCS_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "outbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_RCS_MAP:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "outbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_RCS_MAP:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "outbox"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;Lcom/android/bluetooth/map/BluetoothMapMasInstance;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEmailSendFromClient:Z

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount_id:Ljava/lang/String;

    const/16 v1, 0x1f

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v2, "DUMMY"

    invoke-direct {v1, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    const-string/jumbo v1, "content://im/chat/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsChatUri:Landroid/net/Uri;

    const-string/jumbo v1, "content://im/ft/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsFtUri:Landroid/net/Uri;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEmailHandle:J

    const-wide v2, 0xffffffffL

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mCeBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mStorageUnlocked:Z

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListRcsChat:Ljava/util/Map;

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListRcsFt:Ljava/util/Map;

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->PACKAGE_NAME_MESSAGING:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getRemoteFeatureMask()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothMapContentObserver: Supported features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    :cond_1
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    :cond_2
    if-eqz p4, :cond_5

    iget-object v1, p4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    iget-object v1, p4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount_id:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ConvoContact"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_4

    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to acquire provider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getContactList()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setContactList(Ljava/util/Map;Z)V

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initContactsList()V

    :cond_5
    iput-boolean p5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListSms()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListSms(Ljava/util/Map;Z)V

    const/4 v0, 0x1

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListMms()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMms(Ljava/util/Map;Z)V

    const/4 v0, 0x1

    :cond_7
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getRcsSupportStatus()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListRcsChat()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListRcsChat:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListRcsChat:Ljava/util/Map;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListRcsChat(Ljava/util/Map;Z)V

    const/4 v0, 0x1

    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListRcsFt()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListRcsFt:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListRcsFt:Ljava/util/Map;

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListRcsFt(Ljava/util/Map;Z)V

    const/4 v0, 0x1

    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMsgListMsg()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMsg(Ljava/util/Map;Z)V

    const/4 v0, 0x1

    :cond_a
    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initMsgList()V

    :cond_b
    return-void
.end method

.method public static actionMessageSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "android.permission.WRITE_SMS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "BluetoothMapContentObserver"

    const-string/jumbo v2, "actionMessageSentDisconnected: Not allowed to delete SMS/MMS messages"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->fromOrdinal(I)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionMmsSent(Landroid/content/Context;Landroid/content/Intent;ILjava/util/Map;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionSmsSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static actionMmsSent(Landroid/content/Context;Landroid/content/Intent;ILjava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x4

    const/4 v10, 0x0

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "BluetoothMapContentObserver"

    const-string/jumbo v7, "actionMmsSent()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v6, "transparent"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v6, "HANDLE"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    const-string/jumbo v6, "BluetoothMapContentObserver"

    const-string/jumbo v7, "Intent received for an invalid handle"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    if-eqz p3, :cond_2

    monitor-enter p3

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    :cond_2
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "BluetoothMapContentObserver"

    const-string/jumbo v7, "Transparent in use - delete"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3, v5, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v6

    monitor-exit p3

    throw v6

    :cond_4
    const/4 v6, -0x1

    if-ne p2, v6, :cond_5

    const/4 v6, 0x2

    invoke-static {v0, v1, v3, v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveMmsToFolder(JLandroid/content/ContentResolver;I)V

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_7

    monitor-enter p3

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    if-eqz v2, :cond_6

    const/4 v6, 0x4

    iput v6, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_6
    monitor-exit p3

    :cond_7
    invoke-static {v0, v1, v3, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveMmsToFolder(JLandroid/content/ContentResolver;I)V

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit p3

    throw v6
.end method

.method public static actionSmsSentDisconnected(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const-string/jumbo v5, "transparent"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "uri"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, -0x1

    if-ne p2, v5, :cond_5

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v6, "actionMessageSentDisconnected: result OK"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v2, :cond_4

    const/4 v5, 0x2

    invoke-static {p0, v3, v5, v7}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to move "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to SENT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, v3, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    const/4 v5, 0x5

    invoke-static {p0, v3, v5, v7}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to move "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to FAILED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v6, "Unable to get resolver"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkSmsIsLocked(J)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "locked"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_0

    const/4 v8, 0x1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkSmsIsLocked,locked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Catching SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private deleteMessageMms(J)Z
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v7

    :try_start_4
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Catching SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private deleteMessageRcsChat(J)Z
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsChatUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsChat()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsChat()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v7

    :try_start_4
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Catching SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private deleteMessageRcsFt(J)Z
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsFtUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsFt()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsFt()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v7

    :try_start_4
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Catching SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private deleteMessageSms(J)Z
    .locals 9

    const/4 v8, 0x0

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v7

    :try_start_4
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Catching SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x20

    const/4 v5, 0x0

    const-string/jumbo v8, "[<>&]| {2,}|\r?\n"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-ne v0, v9, :cond_4

    const/4 v2, 0x1

    sub-int v4, v1, v7

    :goto_0
    if-ge v2, v4, :cond_1

    const-string/jumbo v8, "&nbsp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    return-object p0

    :cond_4
    const/16 v8, 0xd

    if-eq v0, v8, :cond_5

    const/16 v8, 0xa

    if-ne v0, v8, :cond_6

    :cond_5
    const-string/jumbo v8, "<br>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_7

    const-string/jumbo v8, "&lt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_8

    const-string/jumbo v8, "&gt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const/16 v8, 0x26

    if-ne v0, v8, :cond_2

    const-string/jumbo v8, "&amp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private failPendingMessages()V
    .locals 13

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v3, "type = 4"

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    if-eqz v12, :cond_1

    iget-boolean v0, v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-nez v0, :cond_5

    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v0, "BluetoothMapContentObserver"

    const-string/jumbo v1, "Ignore failPendingMessages because storage is locked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    iget-object v1, v12, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    const/4 v2, 0x5

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Catching SecurityException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_3
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Catching SQLiteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private getContactList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    return-object v0
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, "com.android.mms"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_0
.end method

.method private static getMmsFolderName(I)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_MMS_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "BluetoothMapContentObserver"

    const-string/jumbo v2, "New MMS mailboxes have been introduced, without an update in BT..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Unknown"

    return-object v1
.end method

.method private getMsgListMms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    return-object v0
.end method

.method private getMsgListMsg()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    return-object v0
.end method

.method private getMsgListRcsChat()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListRcsChat:Ljava/util/Map;

    return-object v0
.end method

.method private getMsgListRcsFt()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListRcsFt:Ljava/util/Map;

    return-object v0
.end method

.method private getMsgListSms()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    return-object v0
.end method

.method private static getRcsFolderName(I)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_RCS_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "BluetoothMapContentObserver"

    const-string/jumbo v2, "New RCS mailboxes have been introduced, without an update in BT..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Unknown"

    return-object v1
.end method

.method private static getSmsFolderName(I)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->FOLDER_SMS_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "BluetoothMapContentObserver"

    const-string/jumbo v2, "New SMS mailbox types have been introduced, without an update in BT..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Unknown"

    return-object v1
.end method

.method private getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0
.end method

.method private handleContactListChanges(Landroid/net/Uri;)V
    .locals 39

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAuthority:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    :try_start_0
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v17, :cond_0

    const-string/jumbo v17, "BluetoothMapContentObserver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "handleContactListChanges uri: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v15, 0x0

    const/16 v35, 0x0

    :try_start_1
    new-instance v30, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;

    const/16 v17, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_1

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->setConvoColunms(Landroid/database/Cursor;)V

    :cond_1
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v38

    monitor-enter v38
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_4

    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_2
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColUci:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColConvoId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-wide/16 v18, 0x0

    cmp-long v17, v24, v18

    if-nez v17, :cond_9

    :cond_3
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_2

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    if-lez v17, :cond_5

    const/16 v35, 0x1

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setContactList(Ljava/util/Map;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v38
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v15, :cond_6

    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    :goto_1
    return-void

    :cond_7
    :try_start_5
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v17, :cond_8

    const-string/jumbo v17, "BluetoothMapContentObserver"

    const-string/jumbo v18, "handleContactListChanges MAP version does notsupport convocontact notifications"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_8
    return-void

    :cond_9
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    if-nez v4, :cond_a

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    move/from16 v17, v0

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPriority:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColBtUid:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v26, 0x0

    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct/range {v4 .. v14}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v16, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v18, "ConversationChanged"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v20

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static {v10, v11}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, p0

    move-object/from16 v19, v5

    move-object/from16 v21, v6

    move/from16 v27, v9

    move-object/from16 v28, v8

    move/from16 v29, v12

    invoke-direct/range {v16 .. v29}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    :try_start_7
    monitor-exit v38

    throw v17
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_0
    move-exception v34

    :try_start_8
    const-string/jumbo v17, "BluetoothMapContentObserver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Catching SecurityException : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v15, :cond_6

    :try_start_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    const-string/jumbo v17, "BluetoothMapContentObserver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Problems contacting the ContentProvider in mas Instance "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " restaring ObexServerSession"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const/16 v26, 0x0

    :try_start_a
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPresenceStatus()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPresenceAvailability()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v9, :cond_d

    if-eqz v32, :cond_b

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_b
    :goto_2
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getChatState()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v12, :cond_c

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setLastActivity(J)V

    invoke-virtual {v4, v12}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setChatState(I)V

    new-instance v16, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v18, "ParticipantChatStateChanged"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPriority()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static {v10, v11}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v23

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v17, p0

    move-object/from16 v19, v5

    move/from16 v29, v12

    invoke-direct/range {v16 .. v29}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_c
    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastOnline:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    invoke-virtual {v4, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceAvailability(I)V

    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setLastActivity(J)V

    if-eqz v32, :cond_e

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    :cond_e
    :goto_3
    new-instance v16, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v18, "ParticipantPresenceChanged"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v20

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getPriority()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v36 .. v37}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v23

    const/16 v29, 0x0

    move-object/from16 v17, p0

    move-object/from16 v19, v5

    move/from16 v27, v9

    move-object/from16 v28, v8

    invoke-direct/range {v16 .. v29}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v4, v8}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceStatus(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v17

    if-eqz v15, :cond_10

    :try_start_b
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v17
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
.end method

.method private handleMsgListChanges(Landroid/net/Uri;)V
    .locals 19

    if-eqz p1, :cond_1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v2, "message"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v2, "delete"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMsg(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesSms()V

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getRcsSupportStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesRcsChat()V

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesRcsFt()V

    :cond_2
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMmsSupportStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMms()V

    :cond_3
    return-void

    :cond_4
    const/16 v17, 0x0

    :goto_1
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_7

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v2, 0x30

    if-lt v10, v2, :cond_5

    const/16 v2, 0x39

    if-le v10, v2, :cond_6

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id == "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v16, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    const/4 v9, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "accountKey"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string/jumbo v6, "mailboxKey"

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    if-eqz v9, :cond_9

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "accountKey"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v2, "mailboxKey"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move/from16 v0, v16

    int-to-long v6, v0

    invoke-virtual {v2, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v15

    if-eqz v15, :cond_1

    const-string/jumbo v2, "inbox"

    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "deleted"

    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "sent"

    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "outbox"

    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMsg(Landroid/net/Uri;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Problems contacting the ContentProvider in mas Instance : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", restaring ObexServerSession"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v14

    :try_start_4
    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exeption = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return-void
.end method

.method private handleMsgListChangesMms()V
    .locals 41

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v12, "handleMsgListChangesMms"

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    const/16 v33, 0x0

    const/16 v31, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v40

    monitor-enter v40

    :try_start_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v12, 0xa

    if-ne v5, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    :goto_0
    if-eqz v31, :cond_2

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string/jumbo v5, "_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string/jumbo v5, "msg_box"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v5, "m_type"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    const-string/jumbo v5, "thread_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string/jumbo v5, "read"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    if-nez v4, :cond_e

    const/16 v33, 0x1

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "inbox"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x84

    move/from16 v0, v36

    if-eq v0, v5, :cond_5

    :goto_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    :cond_2
    if-eqz v31, :cond_3

    :try_start_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_3
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "MessageDeleted"

    iget-wide v0, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v26, v0

    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    sget-object v30, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v29, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v33, 0x1

    goto :goto_3

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    goto/16 :goto_0

    :cond_5
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v12, 0xa

    if-eq v5, v12, :cond_c

    const-string/jumbo v5, "date"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v5, "sub"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v19

    :cond_7
    const-string/jumbo v5, "pri"

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "TEMP handleMsgListChangesMms, newMessage \'read\' state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "priority: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v39

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v12, 0x89

    invoke-static {v5, v6, v7, v12}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "no"

    const/16 v5, 0x82

    move/from16 v0, v39

    if-ne v0, v5, :cond_9

    const-string/jumbo v21, "yes"

    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v12, 0xb

    if-ne v5, v12, :cond_b

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v12, p0

    move-wide v14, v6

    invoke-direct/range {v11 .. v21}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v32

    :try_start_3
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Catching SecurityException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v31, :cond_3

    :try_start_4
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v40

    throw v5

    :cond_b
    :try_start_5
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    int-to-long v0, v9

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v12, p0

    move-wide v14, v6

    invoke-direct/range {v11 .. v24}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_4

    :cond_c
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "inbox"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "draft"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_d
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    sget-object v30, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v29, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    goto :goto_4

    :cond_e
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    if-eq v8, v5, :cond_11

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_f

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "new type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " old type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/16 v33, 0x1

    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v38

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "MessageShift"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v29

    sget-object v30, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_10
    iput v8, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "sent"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "SendingSuccess"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    sget-object v30, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v29, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_11
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    if-eq v10, v5, :cond_12

    const/16 v33, 0x1

    iput v10, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v12, 0xa

    if-le v5, v12, :cond_12

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "ReadStatusChanged"

    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v12, p0

    move-wide v14, v6

    invoke-direct/range {v11 .. v17}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_12
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    if-eqz v31, :cond_13

    :try_start_6
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v5

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMms(Ljava/util/Map;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v40

    return-void
.end method

.method private handleMsgListChangesMsg(Landroid/net/Uri;)V
    .locals 56
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMsgListChangesMsg uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v52, Ljava/util/HashMap;

    invoke-direct/range {v52 .. v52}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "accountKey == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    const/16 v44, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v4, :cond_1

    new-instance v4, Landroid/os/RemoteException;

    const-string/jumbo v5, "mProviderClient is null"

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v55

    monitor-enter v55

    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v44

    :goto_0
    if-eqz v44, :cond_4

    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string/jumbo v4, "mailboxKey"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    const-string/jumbo v4, "flagRead"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move/from16 v0, v49

    int-to-long v12, v0

    invoke-virtual {v4, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v48

    if-eqz v48, :cond_c

    invoke-virtual/range {v48 .. v48}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v4, "inbox"

    invoke-virtual/range {v48 .. v48}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "flagLoaded"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    const/4 v4, 0x1

    move/from16 v0, v43

    if-eq v0, v4, :cond_d

    const/4 v4, 0x2

    move/from16 v0, v43

    if-eq v0, v4, :cond_d

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Body content isn\'t loaded properly :: msg_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", body status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-nez v4, :cond_2

    :cond_4
    if-eqz v44, :cond_5

    :try_start_1
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :cond_6
    :goto_3
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-wide v12, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v4, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v53

    const/16 v50, 0x1

    if-eqz v53, :cond_1c

    invoke-virtual/range {v53 .. v53}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v34

    :goto_4
    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-eqz v4, :cond_7

    const/16 v34, 0x0

    :cond_7
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v31, "SendingSuccess"

    iget-wide v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v36

    const/16 v35, 0x0

    move-object/from16 v29, v15

    move-object/from16 v30, p0

    invoke-direct/range {v29 .. v36}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_8
    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-nez v4, :cond_6

    const-string/jumbo v4, "telecom/msg/inbox"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "telecom/msg/sent"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "telecom/msg/outbox"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "telecom/msg/draft"

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_9
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v31, "MessageDeleted"

    iget-wide v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v36

    const/16 v35, 0x0

    move-object/from16 v29, v15

    move-object/from16 v30, p0

    invoke-direct/range {v29 .. v36}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v55

    throw v4

    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v44

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT_EXT2:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v44

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v20, "unknown"

    goto/16 :goto_1

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    if-nez v8, :cond_12

    const/16 v50, 0x1

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move/from16 v0, v49

    int-to-long v12, v0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xa

    if-eq v4, v5, :cond_11

    const-string/jumbo v4, "timeStamp"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v4, "subject"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v4, "fromList"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "no"

    const-string/jumbo v4, "importance"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    const-string/jumbo v25, "yes"

    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_10

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v17, "NewMessage"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v21

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    invoke-direct/range {v15 .. v25}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-string/jumbo v4, "telecom/msg/inbox"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "telecom/msg/sent"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "telecom/msg/draft"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v47

    :try_start_3
    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Catching SecurityException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v44, :cond_5

    :try_start_4
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :cond_10
    :try_start_5
    const-string/jumbo v4, "threadId"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const-string/jumbo v4, "thread_name"

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v17, "NewMessage"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v21

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    invoke-direct/range {v15 .. v28}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_5

    :cond_11
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v31, "NewMessage"

    sget-object v36, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v35, 0x0

    move-object/from16 v29, v15

    move-object/from16 v30, p0

    move-wide/from16 v32, v10

    move-object/from16 v34, v20

    invoke-direct/range {v29 .. v36}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    goto/16 :goto_5

    :cond_12
    move/from16 v0, v49

    int-to-long v4, v0

    iget-wide v12, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    cmp-long v4, v4, v12

    if-eqz v4, :cond_15

    iget-wide v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    const-wide/16 v12, -0x1

    cmp-long v4, v4, v12

    if-eqz v4, :cond_15

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v4, :cond_13

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "new folderId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " old folderId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-wide v12, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    invoke-virtual {v4, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v53

    const/16 v50, 0x1

    if-eqz v53, :cond_18

    invoke-virtual/range {v53 .. v53}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v34

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v5, "deleted"

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string/jumbo v5, "sent"

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v54

    if-eqz v46, :cond_19

    invoke-virtual/range {v46 .. v46}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v4

    move/from16 v0, v49

    int-to-long v12, v0

    cmp-long v4, v4, v12

    if-nez v4, :cond_19

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v31, "MessageDeleted"

    iget-wide v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v36

    const/16 v35, 0x0

    move-object/from16 v29, v15

    move-object/from16 v30, p0

    invoke-direct/range {v29 .. v36}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_14
    :goto_7
    move/from16 v0, v49

    int-to-long v4, v0

    iput-wide v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->folderId:J

    :cond_15
    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    if-eq v14, v4, :cond_16

    const/16 v50, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_16

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v17, "ReadStatusChanged"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v21

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    invoke-direct/range {v15 .. v21}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    iput v14, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    :cond_16
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    if-eqz v44, :cond_17

    :try_start_6
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_18
    :try_start_7
    const-string/jumbo v34, "unknown"

    goto/16 :goto_6

    :cond_19
    if-eqz v54, :cond_1b

    invoke-virtual/range {v54 .. v54}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v4

    move/from16 v0, v49

    int-to-long v12, v0

    cmp-long v4, v4, v12

    if-nez v4, :cond_1b

    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-eqz v4, :cond_1b

    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->transparent:Z

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    invoke-static {v5, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7

    :cond_1a
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v31, "SendingSuccess"

    iget-wide v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v36

    const/16 v35, 0x0

    move-object/from16 v29, v15

    move-object/from16 v30, p0

    invoke-direct/range {v29 .. v36}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto/16 :goto_7

    :cond_1b
    const-string/jumbo v4, "root"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v37, "MessageShift"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v42

    move-object/from16 v35, v15

    move-object/from16 v36, p0

    move-wide/from16 v38, v10

    move-object/from16 v40, v20

    move-object/from16 v41, v34

    invoke-direct/range {v35 .. v42}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_7

    :cond_1c
    :try_start_8
    const-string/jumbo v34, "unknown"

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMsg(Ljava/util/Map;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v55

    return-void
.end method

.method private handleMsgListChangesRcsChat()V
    .locals 52

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapContentObserver"

    const-string/jumbo v5, "handleMsgListChangesRcsChat"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v47, Ljava/util/HashMap;

    invoke-direct/range {v47 .. v47}, Ljava/util/HashMap;-><init>()V

    const/16 v45, 0x0

    const/16 v43, 0x0

    const-string/jumbo v7, ""

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsChat()Ljava/util/Map;

    move-result-object v51

    monitor-enter v51

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(message_type = 0 OR message_type = 5 OR message_type = 6 OR message_type = 30 OR message_type = 40)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsChatUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_CHAT_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    :goto_0
    if-eqz v43, :cond_6

    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string/jumbo v4, "type"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string/jumbo v4, "thread_id"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string/jumbo v4, "read"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsChat()Ljava/util/Map;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    if-nez v8, :cond_10

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v45, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_e

    const-string/jumbo v4, "date"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v4, "body"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, ""

    const-string/jumbo v49, ""

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "inbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "address"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    if-eqz v49, :cond_2

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_2
    move-object/from16 v24, v49

    :cond_3
    :goto_1
    const-string/jumbo v25, "no"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "inbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "draft"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_d

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v17, "NewMessage"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    invoke-direct/range {v15 .. v25}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :goto_3
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_1

    :cond_6
    if-eqz v43, :cond_7

    :try_start_2
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsChat()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :goto_5
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v37, "MessageDeleted"

    iget-wide v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v38, v0

    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v40

    sget-object v42, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v41, 0x0

    move-object/from16 v35, v15

    move-object/from16 v36, p0

    invoke-direct/range {v35 .. v42}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v45, 0x1

    goto :goto_5

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsChatUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_CHAT_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_a

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_a
    move-object/from16 v24, v49

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/telephony/TelephonyManager;

    if-eqz v50, :cond_3

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_c

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_c
    move-object/from16 v24, v49

    goto/16 :goto_1

    :cond_d
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v17, "NewMessage"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    int-to-long v0, v13

    move-wide/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    invoke-direct/range {v15 .. v28}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "inbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "draft"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_f
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v29, "NewMessage"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v32

    sget-object v34, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v33, 0x0

    move-object/from16 v27, v15

    move-object/from16 v28, p0

    move-wide/from16 v30, v10

    invoke-direct/range {v27 .. v34}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    goto/16 :goto_2

    :cond_10
    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    if-eq v12, v4, :cond_13

    const/16 v45, 0x1

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v4, :cond_11

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "new type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " old type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v33

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v33

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v29, "MessageShift"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v32

    sget-object v34, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v27, v15

    move-object/from16 v28, p0

    move-wide/from16 v30, v10

    invoke-direct/range {v27 .. v34}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_12
    iput v12, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-nez v4, :cond_13

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v37, "SendingSuccess"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v40

    sget-object v42, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v41, 0x0

    move-object/from16 v35, v15

    move-object/from16 v36, p0

    move-wide/from16 v38, v10

    invoke-direct/range {v35 .. v42}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_13
    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    if-eq v14, v4, :cond_14

    const/16 v45, 0x1

    iput v14, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_14

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v17, "ReadStatusChanged"

    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    invoke-direct/range {v15 .. v21}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_14
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3

    :catch_0
    move-exception v44

    :try_start_4
    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Catching SecurityException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v43, :cond_7

    :try_start_5
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v4

    monitor-exit v51

    throw v4

    :catchall_1
    move-exception v4

    if-eqz v43, :cond_15

    :try_start_6
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    :cond_15
    throw v4

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListRcsChat(Ljava/util/Map;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v51

    return-void
.end method

.method private handleMsgListChangesRcsFt()V
    .locals 55

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapContentObserver"

    const-string/jumbo v5, "handleMsgListChangesRcsFt"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v48, Ljava/util/HashMap;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashMap;-><init>()V

    const/16 v46, 0x0

    const/16 v43, 0x0

    const-string/jumbo v7, ""

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsFt()Ljava/util/Map;

    move-result-object v54

    monitor-enter v54

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(message_type = 0 OR message_type = 5 OR message_type = 6 OR message_type = 30 OR message_type = 40)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsFtUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_FT_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    :goto_0
    if-eqz v43, :cond_b

    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_1
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string/jumbo v4, "type"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string/jumbo v4, "thread_id"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string/jumbo v4, "read"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsFt()Ljava/util/Map;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    if-nez v8, :cond_14

    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v46, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_12

    const-string/jumbo v4, "date"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v4, "file_name"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v4, ".tmp"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "before subject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "\\."

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v53

    const-string/jumbo v51, ""

    if-eqz v53, :cond_5

    const/16 v45, 0x0

    :goto_1
    move-object/from16 v0, v53

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v45

    if-ge v0, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v53, v45

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v53

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    move/from16 v0, v45

    if-ge v0, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    :cond_2
    add-int/lit8 v45, v45, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsFtUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_FT_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v43

    goto/16 :goto_0

    :cond_4
    move-object/from16 v23, v51

    :cond_5
    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "after subject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v24, ""

    const-string/jumbo v50, ""

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "inbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "address"

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    if-eqz v50, :cond_7

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_7
    move-object/from16 v24, v50

    :cond_8
    :goto_2
    const-string/jumbo v25, "no"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "inbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "draft"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_11

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v17, "NewMessage"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    invoke-direct/range {v15 .. v25}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :goto_4
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_1

    :cond_b
    if-eqz v43, :cond_c

    :try_start_2
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsFt()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v47

    :goto_6
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v37, "MessageDeleted"

    iget-wide v0, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v38, v0

    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v40

    sget-object v42, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v41, 0x0

    move-object/from16 v35, v15

    move-object/from16 v36, p0

    invoke-direct/range {v35 .. v42}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v46, 0x1

    goto :goto_6

    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v50

    invoke-static {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_e

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_e
    move-object/from16 v24, v50

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/telephony/TelephonyManager;

    if-eqz v52, :cond_8

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_10

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_10
    move-object/from16 v24, v50

    goto/16 :goto_2

    :cond_11
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v17, "NewMessage"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    int-to-long v0, v13

    move-wide/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    invoke-direct/range {v15 .. v28}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "inbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "draft"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_13
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v29, "NewMessage"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v32

    sget-object v34, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v33, 0x0

    move-object/from16 v27, v15

    move-object/from16 v28, p0

    move-wide/from16 v30, v10

    invoke-direct/range {v27 .. v34}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    goto/16 :goto_3

    :cond_14
    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    if-eq v12, v4, :cond_17

    const/16 v46, 0x1

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v4, :cond_15

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "new type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " old type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v33

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v29, "MessageShift"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v32

    sget-object v34, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v27, v15

    move-object/from16 v28, p0

    move-wide/from16 v30, v10

    invoke-direct/range {v27 .. v34}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_16
    iput v12, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    iget-boolean v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-nez v4, :cond_17

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v37, "SendingSuccess"

    invoke-static {v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v40

    sget-object v42, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const/16 v41, 0x0

    move-object/from16 v35, v15

    move-object/from16 v36, p0

    move-wide/from16 v38, v10

    invoke-direct/range {v35 .. v42}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_17
    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    if-eq v14, v4, :cond_18

    const/16 v46, 0x1

    iput v14, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_18

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v17, "ReadStatusChanged"

    iget v4, v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getRcsFolderName(I)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    invoke-direct/range {v15 .. v21}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_18
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    :catch_0
    move-exception v44

    :try_start_4
    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Catching SecurityException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v43, :cond_c

    :try_start_5
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v4

    monitor-exit v54

    throw v4

    :catchall_1
    move-exception v4

    if-eqz v43, :cond_19

    :try_start_6
    invoke-interface/range {v43 .. v43}, Landroid/database/Cursor;->close()V

    :cond_19
    throw v4

    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListRcsFt(Ljava/util/Map;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v54

    return-void
.end method

.method private handleMsgListChangesSms()V
    .locals 48

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v12, "handleMsgListChangesSms"

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v43, Ljava/util/HashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    const/16 v41, 0x0

    const/16 v39, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v47

    monitor-enter v47

    :try_start_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v12, 0xa

    if-ne v5, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    :goto_0
    if-eqz v39, :cond_6

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    const-string/jumbo v5, "_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string/jumbo v5, "type"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v5, "thread_id"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string/jumbo v5, "read"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    if-nez v4, :cond_10

    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v41, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v12, 0xa

    if-le v5, v12, :cond_e

    const-string/jumbo v5, "date"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v5, "body"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, ""

    const-string/jumbo v45, ""

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "inbox"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "address"

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    if-eqz v45, :cond_2

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_2
    move-object/from16 v20, v45

    :cond_3
    :goto_1
    const-string/jumbo v21, "no"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "inbox"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "draft"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v12, 0xb

    if-ne v5, v12, :cond_d

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v17, v0

    move-object/from16 v12, p0

    move-wide v14, v6

    invoke-direct/range {v11 .. v21}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :goto_3
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-nez v5, :cond_1

    :cond_6
    if-eqz v39, :cond_7

    :try_start_1
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_5
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v33, "MessageDeleted"

    iget-wide v0, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    move-wide/from16 v34, v0

    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v38, v0

    const/16 v37, 0x0

    move-object/from16 v31, v11

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v38}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v41, 0x1

    goto :goto_5

    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT_EXT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v45

    invoke-static {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_a
    move-object/from16 v20, v45

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "phone"

    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/telephony/TelephonyManager;

    if-eqz v46, :cond_3

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v46 .. v46}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_c
    move-object/from16 v20, v45

    goto/16 :goto_1

    :cond_d
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v17, v0

    int-to-long v0, v9

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v12, p0

    move-wide v14, v6

    invoke-direct/range {v11 .. v24}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "inbox"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "draft"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_f
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "NewMessage"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v30, v0

    const/16 v29, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    goto/16 :goto_2

    :cond_10
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    if-eq v8, v5, :cond_13

    const/16 v41, 0x1

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_11

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "new type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " old type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v29

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v25, "MessageShift"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v30, v0

    move-object/from16 v23, v11

    move-object/from16 v24, p0

    move-wide/from16 v26, v6

    invoke-direct/range {v23 .. v30}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_12
    iput v8, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    iget-boolean v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->localInitiatedSend:Z

    if-nez v5, :cond_13

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "sent"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v33, "SendingSuccess"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v38, v0

    const/16 v37, 0x0

    move-object/from16 v31, v11

    move-object/from16 v32, p0

    move-wide/from16 v34, v6

    invoke-direct/range {v31 .. v38}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_13
    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    if-eq v10, v5, :cond_14

    const/16 v41, 0x1

    iput v10, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    const/16 v12, 0xa

    if-le v5, v12, :cond_14

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v13, "ReadStatusChanged"

    iget v5, v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsFolderName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v17, v0

    move-object/from16 v12, p0

    move-wide v14, v6

    invoke-direct/range {v11 .. v17}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_14
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_3

    :catch_0
    move-exception v40

    :try_start_3
    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Catching SecurityException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v39, :cond_7

    :try_start_4
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v5

    monitor-exit v47

    throw v5

    :catchall_1
    move-exception v5

    if-eqz v39, :cond_15

    :try_start_5
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    :cond_15
    throw v5

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListSms(Ljava/util/Map;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v47

    return-void
.end method

.method private initContactsList()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v21, "initContactsList"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v21, "initContactsList() no mContactUri - nothing to init"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    if-nez v2, :cond_3

    new-instance v2, Landroid/os/RemoteException;

    const-string/jumbo v21, "mProviderClient is null"

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v15, 0x0

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v16, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->setConvoColunms(Landroid/database/Cursor;)V

    :cond_4
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColConvoId:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v22, 0x0

    cmp-long v2, v18, v22

    if-nez v2, :cond_7

    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    :cond_5
    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v21

    monitor-enter v21

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getContactList()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setContactList(Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v21

    return-void

    :cond_7
    :try_start_2
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColUci:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColName:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColNickname:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceText:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPresenceState:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColLastActive:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColChatState:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColPriority:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$ConvoContactInfo;->mContactColBtUid:I

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct/range {v4 .. v14}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v20

    :try_start_3
    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Catching SecurityException : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v21

    throw v2
.end method

.method private initMsgList()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "initMsgList"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v25

    if-eqz v25, :cond_1f

    invoke-virtual/range {v25 .. v25}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v3, :cond_16

    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    const/16 v22, 0x0

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "[SMS] sync start"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    if-eqz v22, :cond_3

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string/jumbo v3, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v3, "type"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v3, "thread_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v3, "read"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    if-eqz v22, :cond_4

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_0
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "[SMS] sync finish"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListSms(Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v9

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getRcsSupportStatus()Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "[RCS CHAT] sync start"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsChatUri:Landroid/net/Uri;

    sget-object v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_CHAT_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    if-eqz v22, :cond_8

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const-string/jumbo v3, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v3, "type"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v3, "thread_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v3, "read"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-nez v3, :cond_7

    :cond_8
    if-eqz v22, :cond_9

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_1
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_a

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "[RCS CHAT] sync finish"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsChat()Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsChat()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListRcsChat(Ljava/util/Map;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v9

    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_b

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "[RCS FT] sync start"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsFtUri:Landroid/net/Uri;

    sget-object v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->RCS_FT_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    if-eqz v22, :cond_d

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    const-string/jumbo v3, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v3, "type"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v3, "thread_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v3, "read"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v3

    if-nez v3, :cond_c

    :cond_d
    if-eqz v22, :cond_e

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_e
    :goto_2
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_f

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "[RCS FT] sync finish"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsFt()Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsFt()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListRcsFt(Ljava/util/Map;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    monitor-exit v9

    :cond_10
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMmsSupportStatus()Z

    move-result v3

    if-eqz v3, :cond_16

    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_11

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "[MMS] sync start"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :try_start_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    if-eqz v22, :cond_13

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    const-string/jumbo v3, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v3, "msg_box"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v3, "thread_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo v3, "read"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-result v3

    if-nez v3, :cond_12

    :cond_13
    if-eqz v22, :cond_14

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_14
    :goto_3
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_15

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "[MMS] sync finish"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMms(Ljava/util/Map;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    monitor-exit v9

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v3, :cond_1e

    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "accountKey == "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, "message"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/16 v22, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MSG_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_17

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "[Email] sync start"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-eqz v22, :cond_1b

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_18
    const-string/jumbo v3, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v3, "mailboxKey"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    const-string/jumbo v3, "flagRead"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v24

    if-eqz v24, :cond_1a

    const-string/jumbo v3, "inbox"

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string/jumbo v3, "deleted"

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string/jumbo v3, "sent"

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string/jumbo v3, "draft"

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string/jumbo v3, "outbox"

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object v14, v2

    move-object/from16 v15, p0

    move-wide/from16 v16, v4

    invoke-direct/range {v14 .. v20}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JJI)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    move-result v3

    if-nez v3, :cond_18

    :cond_1b
    if-eqz v22, :cond_1c

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_1c
    :goto_4
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_1d

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "[Email] sync finish"

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMsg()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMsgListMsg(Ljava/util/Map;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    monitor-exit v9

    :cond_1e
    return-void

    :cond_1f
    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "Ignore initMsgList because storage is locked"

    invoke-static {v3, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v23

    :try_start_a
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Catching SecurityException : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v22, :cond_4

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    if-eqz v22, :cond_20

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_20
    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v9

    throw v3

    :catch_1
    move-exception v23

    :try_start_b
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Catching SecurityException : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v22, :cond_9

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_2
    move-exception v3

    if-eqz v22, :cond_21

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_21
    throw v3

    :catchall_3
    move-exception v3

    monitor-exit v9

    throw v3

    :catch_2
    move-exception v23

    :try_start_c
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Catching SecurityException : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v22, :cond_e

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_4
    move-exception v3

    if-eqz v22, :cond_22

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_22
    throw v3

    :catchall_5
    move-exception v3

    monitor-exit v9

    throw v3

    :catch_3
    move-exception v23

    :try_start_d
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Catching SecurityException : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v22, :cond_14

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_6
    move-exception v3

    if-eqz v22, :cond_23

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_23
    throw v3

    :catchall_7
    move-exception v3

    monitor-exit v9

    throw v3

    :catch_4
    move-exception v23

    :try_start_e
    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Catching SecurityException : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v22, :cond_1c

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_8
    move-exception v3

    if-eqz v22, :cond_24

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_24
    throw v3

    :cond_25
    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v9, "accountKey is null"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catchall_9
    move-exception v3

    monitor-exit v9

    throw v3
.end method

.method private moveDraftToOutbox(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x4

    invoke-static {p1, p2, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveMmsToFolder(JLandroid/content/ContentResolver;I)V

    return-void
.end method

.method private static moveMmsToFolder(JLandroid/content/ContentResolver;I)V
    .locals 10

    const-wide/16 v4, -0x1

    cmp-long v0, p0, v4

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " _id= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "msg_box"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v6, v3, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moved MMS message to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not move MMS message to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Catching SecurityException : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private pushMmsToFolder(ILjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;)J
    .locals 28

    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "msg_box"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "read"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "seen"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "sub"

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v4, "sub_cs"

    const/16 v7, 0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string/jumbo v4, "ct_t"

    const-string/jumbo v7, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "exp"

    const v7, 0x93a80

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "m_cls"

    const-string/jumbo v7, "personal"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "m_type"

    const/16 v7, 0x80

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "v"

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "pri"

    const/16 v7, 0x81

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "rr"

    const/16 v7, 0x81

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "tr_id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "T"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "d_rpt"

    const/16 v7, 0x81

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "locked"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getTextOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "text_only"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1
    const-string/jumbo v4, "m_size"

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v4, "thread_id"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v7, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v24

    monitor-enter v24

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_3

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Unabled to insert MMS "

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, "Uri: "

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v26, -0x1

    monitor-exit v24

    return-wide v26

    :cond_2
    const-string/jumbo v4, "sub"

    const-string/jumbo v7, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v13, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION_SHORT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string/jumbo v4, "msg_box"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string/jumbo v4, "thread_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string/jumbo v4, "read"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIII)V

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    if-eqz v13, :cond_5

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v24

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, " NEW URI "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "BluetoothMapContentObserver"

    const-string/jumbo v7, "No MMS parts present..."

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    :goto_2
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    const-string/jumbo v4, "contact_id"

    const-string/jumbo v7, "null"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "address"

    const-string/jumbo v7, "insert-address-token"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "type"

    const/16 v7, 0x89

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "charset"

    const/16 v7, 0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/addr"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_8

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, " NEW URI "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    const-string/jumbo v4, "contact_id"

    const-string/jumbo v7, "null"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "address"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "type"

    const/16 v7, 0x97

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "charset"

    const/16 v7, 0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/addr"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_9

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_9

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, " NEW URI "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-wide v18

    :catch_0
    move-exception v17

    :try_start_4
    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Catching SecurityException : "

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v13, :cond_5

    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v24

    throw v4

    :catchall_1
    move-exception v4

    if-eqz v13, :cond_a

    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_b
    :try_start_7
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_c

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Adding "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v24, " parts to the data base."

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_d
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    const/4 v14, 0x1

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_15

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "TEXT"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string/jumbo v4, "ct"

    const-string/jumbo v7, "text/plain"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "chset"

    const/16 v7, 0x6a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_10

    const-string/jumbo v4, "fn"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "name"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_11

    const-string/jumbo v4, "cid"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v4, :cond_13

    const-string/jumbo v4, "cl"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v4, :cond_e

    const-string/jumbo v4, "cd"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string/jumbo v4, "text"

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->getDataAsString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/part"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "BluetoothMapContentObserver"

    const-string/jumbo v7, "Added TEXT part"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_7
    if-eqz v5, :cond_d

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Added part with content-type: "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v24, " to Uri: "

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    :catch_1
    move-exception v16

    const-string/jumbo v4, "BluetoothMapContentObserver"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_10
    :try_start_8
    const-string/jumbo v4, "fn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "text_"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v24, ".txt"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "text_"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v24, ".txt"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v15

    const-string/jumbo v4, "BluetoothMapContentObserver"

    invoke-static {v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_11
    :try_start_9
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_12

    const-string/jumbo v4, "cid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "<"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v24, ">"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_12
    const-string/jumbo v4, "cid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "<text_"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v24, ">"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_14

    const-string/jumbo v4, "cl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v24, ".txt"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_14
    const-string/jumbo v4, "cl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "text_"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v24, ".txt"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_15
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_19

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "SMIL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string/jumbo v4, "seq"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "ct"

    const-string/jumbo v7, "application/smil"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_17

    const-string/jumbo v4, "cid"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v4, :cond_18

    const-string/jumbo v4, "cl"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v4, :cond_16

    const-string/jumbo v4, "cd"

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-string/jumbo v4, "fn"

    const-string/jumbo v7, "smil.xml"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "name"

    const-string/jumbo v7, "smil.xml"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "text"

    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    move-object/from16 v24, v0

    const-string/jumbo v25, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "/part"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "BluetoothMapContentObserver"

    const-string/jumbo v7, "Added SMIL part"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_17
    const-string/jumbo v4, "cid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "<smil_"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v24, ">"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_18
    const-string/jumbo v4, "cl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "smil_"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v24, ".xml"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_19
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;I)V

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "BluetoothMapContentObserver"

    const-string/jumbo v7, "Added OTHER part"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_7
.end method

.method private registerPhoneServiceStateListener()V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private removeDeletedMessages()V
    .locals 7

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "thread_id = -1"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v4, "Ignore removeDeletedMessages because storage is locked"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Catching SQLiteException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDeletedMessages() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resendPendingMessages()V
    .locals 14

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v3, "type = 4"

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string/jumbo v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    if-eqz v13, :cond_1

    iget-boolean v0, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-nez v0, :cond_5

    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v0, "BluetoothMapContentObserver"

    const-string/jumbo v1, "Ignore resendPendingMessages because storage is locked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :try_start_1
    iget-boolean v0, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v13, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->sendInProgress:Z

    invoke-virtual {p0, v13, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Catching SecurityException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_3
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Catching SQLiteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 8

    if-nez p1, :cond_1

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v4, "Event is null - don\'t send event."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v4, "mTransmitEvents == false - don\'t send event."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->datetime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->subject:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->senderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->priority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v4, "sendEvent: No MNS client registered or connected- don\'t send event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "NewMessage"

    if-ne v3, v4, :cond_8

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventNewMessage(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "MessageDeleted"

    if-ne v3, v4, :cond_a

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventMessageDeleted(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_9

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "MessageRemoved"

    if-ne v3, v4, :cond_c

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventMessageRemoved(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_b

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :cond_c
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "MessageShift"

    if-ne v3, v4, :cond_e

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventMessageShift(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_d

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    :cond_e
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "DeliverySuccess"

    if-ne v3, v4, :cond_10

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventDeliverySuccess(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_f

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    :cond_10
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "SendingSuccess"

    if-ne v3, v4, :cond_12

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventSendingSuccess(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_11

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    :cond_12
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "SendingFailure"

    if-ne v3, v4, :cond_14

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventSendingFailed(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_13

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void

    :cond_14
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "DeliveryFailure"

    if-ne v3, v4, :cond_16

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventDeliveryFailed(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_15

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void

    :cond_16
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "ReadStatusChanged"

    if-ne v3, v4, :cond_18

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventReadStatusChanged(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_17

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void

    :cond_18
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "ConversationChanged"

    if-ne v3, v4, :cond_1a

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventConversationChanged(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_19

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-void

    :cond_1a
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "ParticipantPresenceChanged"

    if-ne v3, v4, :cond_1c

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantPresenceChanged(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_1b

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void

    :cond_1c
    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    const-string/jumbo v4, "ParticipantChatStateChanged"

    if-ne v3, v4, :cond_1e

    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantChatstateChanged(J)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_1d

    const-string/jumbo v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skip sending event of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void

    :cond_1e
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->encode()[B

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->sendEvent([BI)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1f
    :goto_0
    return-void

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v3, :cond_1f

    const-string/jumbo v3, "BluetoothMapContentObserver"

    const-string/jumbo v4, "Exception - should not happen: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static sendEventConversationChanged(J)Z
    .locals 4

    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventDeliveryFailed(J)Z
    .locals 4

    const-wide/16 v0, 0x40

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventDeliverySuccess(J)Z
    .locals 4

    const-wide/16 v0, 0x20

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventMessageDeleted(J)Z
    .locals 4

    const-wide/16 v0, 0x2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventMessageRemoved(J)Z
    .locals 4

    const-wide/16 v0, 0x2000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventMessageShift(J)Z
    .locals 4

    const-wide/16 v0, 0x4

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventNewMessage(J)Z
    .locals 4

    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventParticipantChatstateChanged(J)Z
    .locals 4

    const-wide/16 v0, 0x1000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventParticipantPresenceChanged(J)Z
    .locals 4

    const-wide/16 v0, 0x800

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventReadStatusChanged(J)Z
    .locals 4

    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventSendingFailed(J)Z
    .locals 4

    const-wide/16 v0, 0x10

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendEventSendingSuccess(J)Z
    .locals 4

    const-wide/16 v0, 0x8

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setContactList(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactList:Ljava/util/Map;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateImEmailConvoListVersionCounter()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setContactList(Ljava/util/Map;)V

    return-void
.end method

.method private setEmailMessageStatusDelete(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;JI)Z
    .locals 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x1

    new-array v3, v11, [J

    const-wide/16 v8, 0x0

    aput-wide v8, v3, v10

    aput-wide p3, v3, v10

    const/4 v6, 0x0

    move/from16 v0, p5

    if-ne v0, v11, :cond_0

    new-instance v6, Landroid/content/Intent;

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils;->SET_DELETE_STATUS:Ljava/lang/String;

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_PACKAGE:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "APPLICATION_PACKAGE_NAME"

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_PACKAGE:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "MESSAGE_ITEM_ID"

    invoke-virtual {v6, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v8, 0xf0

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    return v7

    :cond_1
    :try_start_0
    const-string/jumbo v8, "BluetoothMapContentObserver"

    const-string/jumbo v9, "need 500ms to update deleted message on the DB before return result"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v7

    :catch_0
    move-exception v2

    const-string/jumbo v8, "BluetoothMapContentObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception on sleep : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setMsgListMms(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListMms(Ljava/util/Map;)V

    return-void
.end method

.method private setMsgListMsg(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMsg:Ljava/util/Map;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListMsg(Ljava/util/Map;)V

    return-void
.end method

.method private setMsgListRcsChat(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListRcsChat:Ljava/util/Map;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListRcsChat(Ljava/util/Map;)V

    return-void
.end method

.method private setMsgListRcsFt(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListRcsFt:Ljava/util/Map;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListRcsFt(Ljava/util/Map;)V

    return-void
.end method

.method private setMsgListSms(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateFolderVersionCounter()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setMsgListSms(Ljava/util/Map;)V

    return-void
.end method

.method private unDeleteMessageMms(J)Z
    .locals 19

    const/16 v17, 0x0

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "thread_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    const-string/jumbo v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string/jumbo v2, "msg_box"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v2, 0x1

    if-ne v14, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x89

    invoke-static {v2, v12, v13, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v8

    :goto_0
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    if-eqz v11, :cond_0

    invoke-virtual {v15}, Ljava/lang/Long;->intValue()I

    move-result v2

    iput v2, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->threadId:I

    const/4 v2, 0x1

    iput v2, v11, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v4

    const-string/jumbo v2, "thread_id"

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_1
    const/16 v17, 0x1

    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    return v17

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x97

    invoke-static {v2, v12, v13, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v10

    :try_start_4
    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Catching SecurityException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_5
    :try_start_5
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message not in deleted folder: handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " threadId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private unDeleteMessageRcsChat(J)Z
    .locals 13

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsChatUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v0, -0x1

    if-ne v12, v0, :cond_3

    const-string/jumbo v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v6, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string/jumbo v0, "thread_id"

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v11, 0x1

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return v11

    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message not in deleted folder: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " threadId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Catching SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private unDeleteMessageRcsFt(J)Z
    .locals 13

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsFtUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v0, -0x1

    if-ne v12, v0, :cond_3

    const-string/jumbo v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v6, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string/jumbo v0, "thread_id"

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v11, 0x1

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return v11

    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message not in deleted folder: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " threadId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Catching SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private unDeleteMessageSms(J)Z
    .locals 13

    const/4 v11, 0x0

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v0, -0x1

    if-ne v12, v0, :cond_3

    const-string/jumbo v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v6, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string/jumbo v0, "thread_id"

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v11, 0x1

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return v11

    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message not in deleted folder: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " threadId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Catching SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private unRegisterPhoneServiceStateListener()V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private updateThreadId(Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "mid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ct"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string/jumbo v4, "cid"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string/jumbo v4, "cl"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "cd"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string/jumbo v4, "fn"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "name"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_2
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MMS has no CONTENT_TYPE for part "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string/jumbo v4, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v4, "cid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string/jumbo v4, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v4, "cl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v4, "fn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public deinit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unregisterObserver()V

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->unregister()V

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unRegisterPhoneServiceStateListener()V

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->failPendingMessages()V

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->removeDeletedMessages()V

    return-void
.end method

.method eventMaskContainsContacts(J)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantPresenceChanged(J)Z

    move-result v0

    return v0
.end method

.method eventMaskContainsCovo(J)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventConversationChanged(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEventParticipantChatstateChanged(J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getObserverRemoteFeatureMask()I
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getObserverRemoteFeatureMask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mMapSupportedFeatures: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    return v0
.end method

.method public handleMmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 13

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v12, 0x1

    const/4 v6, 0x0

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "handleMmsSendIntent()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "MNS not connected - use static handling"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v6

    :cond_2
    const-string/jumbo v2, "HANDLE"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v2, "result"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1, p2, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->actionMmsSent(Landroid/content/Context;Landroid/content/Intent;ILjava/util/Map;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gez v2, :cond_3

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "Intent received for an invalid handle"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v2, :cond_4

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v3, "SendingFailure"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    :cond_4
    :goto_0
    return v12

    :cond_5
    const-string/jumbo v2, "transparent"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4

    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v2, :cond_4

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string/jumbo v3, "SendingSuccess"

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMmsFolderName(I)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_0
.end method

.method public handleSmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const-string/jumbo v1, "type"

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->fromOrdinal(I)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMmsSendIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->register()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mCeBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mCeBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$CeBroadcastReceiver;->register()V

    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerPhoneServiceStateListener()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mInitialized:Z

    return-void
.end method

.method public pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)J
    .locals 58
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v8, "pushMessage"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v51

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    const/16 v24, 0x0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v33

    const-wide/16 v22, -0x1

    const-wide/16 v38, -0x1

    if-nez v51, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "draft"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v8, "Added empty recipient to draft message"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->getEmailBody()Ljava/lang/String;

    move-result-object v14

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v44

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pushMessage: message string length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v45

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pushMessage: messages count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v45

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v6

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pushMessage: folder= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v54, ""

    invoke-interface/range {v51 .. v51}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :cond_4
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-virtual/range {v49 .. v49}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getEmailRecipients()[Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    array-length v9, v8

    :goto_1
    if-ge v5, v9, :cond_4

    aget-object v29, v8, v5

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v24

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v8, "Trying to send a message with no recipients"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    return-wide v8

    :cond_8
    move-object/from16 v5, p1

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->getCc()Ljava/util/ArrayList;

    move-result-object v19

    const-string/jumbo v30, ""

    if-eqz v19, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_9
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v28

    const-wide/16 v46, -0x1

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "draft"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v46

    :cond_a
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_b

    const-string/jumbo v8, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "account-id : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "\n "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "mailbox-key : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v46

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "recipient-id-to : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "recipient-id-cc : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "title : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "body : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v43, Lorg/json/JSONObject;

    invoke-direct/range {v43 .. v43}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v5, "original-msg-id"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v5, "account-id"

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "mailbox-key"

    move-object/from16 v0, v43

    move-wide/from16 v1, v46

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v5, "msg"

    invoke-static {v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "recipient-id-to"

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "recipient-id-cc"

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "recipient-id-bcc"

    const-string/jumbo v8, ""

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "title"

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->getSubject()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "signature"

    const-string/jumbo v8, ""

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/16 v42, 0x0

    new-instance v42, Landroid/content/Intent;

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->SEND_NEW_MESSAGE:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "data"

    invoke-virtual/range {v43 .. v43}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.sec.android.email.permission.EMAILBROADCAST"

    move-object/from16 v0, v42

    invoke-virtual {v5, v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v5, 0xf0

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_3
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v9, "com.sec.android.email.permission.EMAILBROADCAST"

    move-object/from16 v0, v42

    invoke-virtual {v5, v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const/16 v37, 0x0

    :goto_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v37

    if-ge v0, v5, :cond_9

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    add-int/lit8 v37, v37, 0x1

    goto :goto_4

    :catch_0
    move-exception v35

    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    :cond_e
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEmailSendFromClient:Z

    monitor-enter p0

    const/16 v31, 0x0

    move/from16 v32, v31

    :goto_5
    const-wide/16 v8, -0x1

    cmp-long v5, v22, v8

    if-nez v5, :cond_10

    add-int/lit8 v31, v32, 0x1

    const/4 v5, 0x7

    move/from16 v0, v32

    if-ge v0, v5, :cond_11

    :try_start_1
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_f

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v8, "waiting Email handle"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-wide/16 v8, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->wait(J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEmailHandle:J

    move-wide/from16 v22, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v32, v31

    goto :goto_5

    :cond_10
    move/from16 v31, v32

    :cond_11
    :try_start_2
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_12

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v8, "Received Email handle"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_12
    :goto_6
    monitor-exit p0

    :cond_13
    return-wide v22

    :catch_1
    move-exception v34

    :try_start_3
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v8, "Interrupted in sendMessage blocking"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_12

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v8, "Received Email handle"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_5
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v8, :cond_14

    const-string/jumbo v8, "BluetoothMapContentObserver"

    const-string/jumbo v9, "Received Email handle"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_15
    invoke-interface/range {v51 .. v51}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :cond_16
    :goto_7
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-virtual/range {v49 .. v49}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getEnvLevel()I

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual/range {v49 .. v49}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v49 .. v49}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstEmail()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getTextOnly()Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->getMessageAsText()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v14}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v53

    const/16 v5, 0xa

    move/from16 v0, v53

    if-gt v0, v5, :cond_19

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_17

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pushMessage - converting MMS to SMS, sms parts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v53

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    :cond_18
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v8, p1

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    move-object/from16 v5, p0

    move/from16 v9, v24

    invoke-virtual/range {v5 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMmsMessage(Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;II)J

    move-result-wide v22

    goto/16 :goto_7

    :cond_19
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_1a

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v8, "pushMessage - MMS text only but to big to convert to SMS"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v14, 0x0

    goto :goto_8

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v5

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_1c
    if-nez v14, :cond_1d

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->getSmsBody()Ljava/lang/String;

    move-result-object v14

    :cond_1d
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v8, "PushMsg: Empty msgBody "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "push EMPTY message: Invalid Body"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v8

    monitor-enter v8

    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v15, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v13, v7

    invoke-static/range {v11 .. v18}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object v27

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_1f

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Sms.addMessageToUri() returned: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-nez v27, :cond_21

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_20

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pushMessage - failure on add to uri "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_20
    const-wide/16 v56, -0x1

    monitor-exit v8

    return-wide v56

    :cond_21
    :try_start_7
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string/jumbo v5, "outbox"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    new-instance v20, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    move-object/from16 v21, p0

    move/from16 v25, v10

    move-object/from16 v26, v7

    invoke-direct/range {v20 .. v27}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIILjava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-interface {v5, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v5, :cond_22

    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v9, "sendMessage returned..."

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_22
    monitor-exit v8

    goto/16 :goto_7

    :catchall_2
    move-exception v5

    monitor-exit v8

    throw v5

    :cond_23
    const-string/jumbo v5, "BluetoothMapContentObserver"

    const-string/jumbo v8, "pushMessage - failure on type "

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    return-wide v8
.end method

.method refreshConvoListVersionCounter()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleContactListChanges(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    throw v0
.end method

.method refreshFolderVersionCounter()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesSms()V

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMms()V

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getRcsSupportStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesRcsChat()V

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesRcsFt()V

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMsg(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "BluetoothMapContentObserver"

    const-string/jumbo v2, "Unable to update FolderVersionCounter. - Not fatal, but can cause undesirable user experience!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mTransmitEvents:Z

    throw v1
.end method

.method public registerObserver()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    const-string/jumbo v1, "registerObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEnableSmsMms:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getRcsSupportStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsChatUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsFtUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "eas"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/insert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/delete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initMsgList()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    const/4 v10, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-string/jumbo v5, "gsm.sim.state"

    const-string/jumbo v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v5, ","

    invoke-virtual {v14, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v5, "ABSENT"

    const/4 v6, 0x1

    aget-object v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "ABSENT"

    const/4 v6, 0x0

    aget-object v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v10, 0x1

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v17

    const/4 v5, 0x0

    aget v16, v17, v5

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SIM2 is avaliabe..subId = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subId= "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "currSimId = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v19, Landroid/content/ContentValues;

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v5, "sim_slot"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "sim_imsi"

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tm.getSubscriberId(subId) = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    const/4 v9, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v6, v0, v9, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ge v11, v5, :cond_7

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    const/4 v6, 0x0

    invoke-direct {v12, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "message/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->timestamp:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "HANDLE"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v5, "uri"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "retry"

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->retry:I

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "transparent"

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    invoke-virtual {v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v5, v6, v12, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "ABSENT"

    const/4 v6, 0x0

    aget-object v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "ABSENT"

    const/4 v6, 0x1

    aget-object v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v10, 0x0

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v17

    const/4 v5, 0x0

    aget v16, v17, v5

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SIM1 is avaliabe..subId = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v10

    goto/16 :goto_0

    :cond_7
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendMessage to "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_9
    return-void
.end method

.method public sendMmsMessage(Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;II)J
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const-string/jumbo v0, "outbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "draft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMmsToFolder(ILjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMime;)J

    move-result-wide v6

    const-wide/16 v0, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    const-string/jumbo v0, "outbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/bluetooth/map/MmsFileProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "message/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "type"

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "HANDLE"

    invoke-virtual {v8, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v0, "transparent"

    invoke-virtual {v8, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "retry"

    invoke-virtual {v8, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v8, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    :cond_1
    return-wide v6

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot push message to other folders than outbox/draft"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFolderStructure(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mFolders:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-void
.end method

.method public setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;I)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMessageStatusDeleted: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_2

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p1

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setEmailMessageStatusDelete(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;JI)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_3

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothMapContentObserver"

    const-string/jumbo v2, "setMessageStatusDeleted: IM not handled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne p6, v1, :cond_9

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v1, :cond_4

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_6

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->checkSmsIsLocked(J)Z

    move-result v1

    if-eqz v1, :cond_5

    return v4

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageSms(J)Z

    move-result v0

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageRcsChat(J)Z

    move-result v0

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageRcsFt(J)Z

    move-result v0

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageMms(J)Z

    move-result v0

    goto :goto_0

    :cond_9
    if-nez p6, :cond_1

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v1, :cond_a

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_b

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageSms(J)Z

    move-result v0

    goto :goto_0

    :cond_b
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageRcsChat(J)Z

    move-result v0

    goto :goto_0

    :cond_c
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageRcsFt(J)Z

    move-result v0

    goto :goto_0

    :cond_d
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageMms(J)Z

    move-result v0

    goto :goto_0
.end method

.method public setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;I)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x0

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMessageStatusRead: handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_9

    :cond_1
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SMS folderType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    packed-switch v12, :pswitch_data_0

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : SMS folderType is invalid"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v11

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exeption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "read"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "seen"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v21

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " -> SMS Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " values "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListSms()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    if-eqz v19, :cond_4

    move/from16 v0, p5

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " rows updated!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v2, 0x1

    if-ge v9, v2, :cond_8

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMessageRead(): Unable to update read status. Message not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x0

    return v2

    :cond_6
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : cursor has no row"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    return v2

    :cond_7
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : cursor is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    :catch_1
    move-exception v20

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMessageRead(): error updating read status for message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    const/4 v2, 0x1

    return v2

    :cond_9
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsChatUri:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v15, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v10

    :goto_2
    if-eqz v10, :cond_10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string/jumbo v2, "type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RCS CHAT folderType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    packed-switch v12, :pswitch_data_1

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : RCS CHAT folderType is invalid"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    return v2

    :catch_2
    move-exception v11

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exeption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsChatUri:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "read"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "seen"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v21

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " -> RCS CHAT Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " values "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsChat()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsChat()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    if-eqz v19, :cond_c

    move/from16 v0, p5

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_c
    monitor-exit v4

    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_d

    const/4 v2, 0x1

    :try_start_5
    new-array v13, v2, [I

    const/4 v2, 0x0

    aput v15, v13, v2

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.accessory.intent.action.UPDATE_NOTIFICATION_ITEM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->PACKAGE_NAME_MESSAGING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "NOTIFICATION_PACKAGE_NAME"

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->PACKAGE_NAME_MESSAGING:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "NOTIFICATION_ITEM_URI"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsChatUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v2, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " rows updated!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v2, 0x1

    if-ge v9, v2, :cond_8

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMessageRead(): Unable to update read status. Message not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v2, 0x0

    return v2

    :cond_f
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : cursor has no row"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    return v2

    :cond_10
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : cursor is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    :catch_3
    move-exception v20

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMessageRead(): error updating read status for message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_11
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsFtUri:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v15, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v10

    :goto_3
    if-eqz v10, :cond_18

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string/jumbo v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string/jumbo v2, "type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RCS FT folderType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    packed-switch v12, :pswitch_data_2

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : RCS FT folderType is invalid"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    return v2

    :catch_4
    move-exception v11

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exeption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsFtUri:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "read"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "seen"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v21

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_13

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " -> RCS FT Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " values "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsFt()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListRcsFt()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    if-eqz v19, :cond_14

    move/from16 v0, p5

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_14
    monitor-exit v4

    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_15

    const/4 v2, 0x1

    :try_start_8
    new-array v13, v2, [I

    const/4 v2, 0x0

    aput v15, v13, v2

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.accessory.intent.action.UPDATE_NOTIFICATION_ITEM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->PACKAGE_NAME_MESSAGING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "NOTIFICATION_PACKAGE_NAME"

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->PACKAGE_NAME_MESSAGING:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "NOTIFICATION_ITEM_URI"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mRcsFtUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v2, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_16

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " rows updated!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v2, 0x1

    if-ge v9, v2, :cond_8

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMessageRead(): Unable to update read status. Message not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    const/4 v2, 0x0

    return v2

    :cond_17
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : cursor has no row"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    return v2

    :cond_18
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : cursor is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :catchall_2
    move-exception v2

    monitor-exit v4

    throw v2

    :catch_5
    move-exception v20

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMessageRead(): error updating read status for message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_19
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_20

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " -> MMS Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v10, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v10

    :goto_4
    if-eqz v10, :cond_1f

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "msg_box"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MMS folderType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    packed-switch v12, :pswitch_data_3

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : MMS folderType is invalid"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    return v2

    :catch_6
    move-exception v11

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exeption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_3
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "read"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getMsgListMms()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    if-eqz v19, :cond_1c

    move/from16 v0, p5

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->flagRead:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_1c
    monitor-exit v4

    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " rows updated!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v2, 0x1

    if-ge v9, v2, :cond_8

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMessageRead(): Unable to update read status. Message not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    const/4 v2, 0x0

    return v2

    :cond_1e
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : cursor has no row"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    return v2

    :cond_1f
    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v4, "setMessageRead() : cursor is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :catchall_3
    move-exception v2

    monitor-exit v4

    throw v2

    :catch_7
    move-exception v20

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMessageRead(): error updating read status for message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_20
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_21

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_8

    :cond_21
    const/4 v2, 0x1

    new-array v14, v2, [J

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    aput-wide v4, v14, v2

    const/4 v2, 0x0

    aput-wide p1, v14, v2

    const/16 v18, 0x0

    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_22

    new-instance v18, Landroid/content/Intent;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->SET_READ_STATUS:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_5
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_PACKAGE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "APPLICATION_PACKAGE_NAME"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_PACKAGE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "MESSAGE_ITEM_ID"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v2, 0xf0

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6

    :cond_22
    new-instance v18, Landroid/content/Intent;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->SET_UNREAD_STATUS:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method declared-synchronized setNotificationFilter(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mEventFilter:J

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsContacts(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsContacts(J)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsCovo(J)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->eventMaskContainsCovo(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setNotificationRegistration(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v5, 0xd3

    const/4 v4, 0x1

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "setNotificationRegistration() enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-nez v2, :cond_1

    return v5

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isValidMnsRecord()Z

    move-result v2

    if-eqz v2, :cond_4

    iput v4, v1, Landroid/os/Message;->what:I

    :cond_2
    :goto_0
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput p1, v1, Landroid/os/Message;->arg2:I

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNotificationRegistration() send : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to MNS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v2, 0xa0

    return v2

    :cond_4
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->isSearchInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p1, v4, :cond_5

    return v5

    :cond_5
    iput v4, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->D:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "BluetoothMapContentObserver"

    const-string/jumbo v3, "setNotificationRegistration() Unable to send registration request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    return v5
.end method

.method public setObserverRemoteFeatureMask(I)V
    .locals 3

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setObserverRemoteFeatureMask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapEventReportVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mMapSupportedFeatures : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMapSupportedFeatures:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public unregisterContentObserver()V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    const-string/jumbo v1, "unregisterContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    return-void
.end method

.method public unregisterObserver()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContentObserver"

    const-string/jumbo v1, "unregisterObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserverRegistered:Z

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mProviderClient:Landroid/content/ContentProviderClient;

    :cond_1
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    return-void
.end method
