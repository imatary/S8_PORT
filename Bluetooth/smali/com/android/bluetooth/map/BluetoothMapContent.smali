.class public Lcom/android/bluetooth/map/BluetoothMapContent;
.super Ljava/lang/Object;
.source "BluetoothMapContent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I = null

.field public static final CONVO_PARAMETER_MASK_ALL_ENABLED:J = 0xffffffffL

.field public static final CONVO_PARAMETER_MASK_DEFAULT:J = 0xe1L

.field private static final CONVO_PARAM_MASK_CONVO_LAST_ACTIVITY:I = 0x2

.field private static final CONVO_PARAM_MASK_CONVO_NAME:I = 0x1

.field private static final CONVO_PARAM_MASK_CONVO_READ_STATUS:I = 0x4

.field private static final CONVO_PARAM_MASK_CONVO_SUMMARY:I = 0x10

.field private static final CONVO_PARAM_MASK_CONVO_VERSION_COUNTER:I = 0x8

.field private static final CONVO_PARAM_MASK_PARTTICIPANTS:I = 0x20

.field private static final CONVO_PARAM_MASK_PART_CHAT_STATE:I = 0x100

.field private static final CONVO_PARAM_MASK_PART_DISP_NAME:I = 0x80

.field private static final CONVO_PARAM_MASK_PART_LAST_ACTIVITY:I = 0x200

.field private static final CONVO_PARAM_MASK_PART_NAME:I = 0x800

.field private static final CONVO_PARAM_MASK_PART_PRESENCE:I = 0x1000

.field private static final CONVO_PARAM_MASK_PART_PRESENCE_TEXT:I = 0x2000

.field private static final CONVO_PARAM_MASK_PART_PRIORITY:I = 0x4000

.field private static final CONVO_PARAM_MASK_PART_UCI:I = 0x40

.field private static final CONVO_PARAM_MASK_PART_X_BT_UID:I = 0x400

.field private static final CONVO_VERSION_PROJECTION:[Ljava/lang/String;

.field private static final D:Z

.field private static final FILTER_READ_STATUS_ALL:I = 0x0

.field private static final FILTER_READ_STATUS_READ_ONLY:I = 0x2

.field private static final FILTER_READ_STATUS_UNREAD_ONLY:I = 0x1

.field public static final INSERT_ADDRES_TOKEN:Ljava/lang/String; = "insert-address-token"

.field private static final INTERESTED_MESSAGE_TYPE_CLAUSE:Ljava/lang/String;

.field public static final MAP_MESSAGE_CHARSET_NATIVE:I = 0x0

.field public static final MAP_MESSAGE_CHARSET_UTF8:I = 0x1

.field private static final MASK_ATTACHMENT_MIME:I = 0x400000

.field private static final MASK_ATTACHMENT_SIZE:I = 0x400

.field private static final MASK_CONVERSATION_ID:I = 0x40000

.field private static final MASK_CONVERSATION_NAME:I = 0x80000

.field private static final MASK_DATETIME:I = 0x2

.field private static final MASK_DELIVERY_STATUS:I = 0x20000

.field private static final MASK_FOLDER_TYPE:I = 0x100000

.field private static final MASK_PRIORITY:I = 0x800

.field private static final MASK_PROTECTED:I = 0x4000

.field private static final MASK_READ:I = 0x1000

.field private static final MASK_RECEPTION_STATUS:I = 0x100

.field private static final MASK_RECIPIENT_ADDRESSING:I = 0x20

.field private static final MASK_RECIPIENT_NAME:I = 0x10

.field private static final MASK_REPLYTO_ADDRESSING:I = 0x8000

.field private static final MASK_SENDER_ADDRESSING:I = 0x8

.field private static final MASK_SENDER_NAME:I = 0x4

.field private static final MASK_SENT:I = 0x2000

.field private static final MASK_SIZE:I = 0x80

.field private static final MASK_SUBJECT:I = 0x1

.field private static final MASK_TEXT:I = 0x200

.field private static final MASK_TYPE:I = 0x40

.field private static final MAX_RCS_CHAT_LENGHT:I = 0x3e8

.field public static final MMS_BCC:I = 0x81

.field public static final MMS_CC:I = 0x82

.field static final MMS_CONVO_PROJECTION:[Ljava/lang/String;

.field public static final MMS_FROM:I = 0x89

.field static final MMS_PROJECTION:[Ljava/lang/String;

.field private static final MMS_SMS_THREAD_COL_DATE:I

.field private static final MMS_SMS_THREAD_COL_ID:I

.field private static final MMS_SMS_THREAD_COL_READ:I

.field private static final MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

.field private static final MMS_SMS_THREAD_COL_SNIPPET:I

.field private static final MMS_SMS_THREAD_COL_SNIPPET_CS:I

.field private static final MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

.field public static final MMS_TO:I = 0x97

.field public static final PARAMETER_MASK_ALL_ENABLED:J = 0xffffffffL

.field public static final PARAMETER_MASK_DEFAULT:J = 0x15efL

.field static final RCS_CHAT_PROJECTION:[Ljava/lang/String;

.field static final RCS_FT_PROJECTION:[Ljava/lang/String;

.field static final SMS_CONVO_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContent"

.field private static final V:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private final mBaseUri:Ljava/lang/String;

.field private final mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

.field private mMessageVersion:Ljava/lang/String;

.field private mMsgListingVersion:I

.field private mRcsChatUri:Landroid/net/Uri;

.field private mRcsFtUri:Landroid/net/Uri;

.field private mRemoteFeatureMask:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method private static synthetic -getcom-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->-com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->-com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->values()[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->-com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    const-string/jumbo v1, "( %s = %d OR %s = %d OR %s = %d )"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "m_type"

    aput-object v3, v2, v5

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "m_type"

    aput-object v3, v2, v7

    const/16 v3, 0x84

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string/jumbo v3, "m_type"

    aput-object v3, v2, v9

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->INTERESTED_MESSAGE_TYPE_CLAUSE:Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v6

    const-string/jumbo v2, "address"

    aput-object v2, v1, v7

    const-string/jumbo v2, "body"

    aput-object v2, v1, v8

    const-string/jumbo v2, "date"

    aput-object v2, v1, v9

    const-string/jumbo v2, "read"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "type"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "status"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "locked"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "error_code"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v6

    const-string/jumbo v2, "m_id"

    aput-object v2, v1, v7

    const-string/jumbo v2, "m_size"

    aput-object v2, v1, v8

    const-string/jumbo v2, "sub"

    aput-object v2, v1, v9

    const-string/jumbo v2, "ct_t"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "text_only"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "date"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "date_sent"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "read"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "msg_box"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "st"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "pri"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v6

    const-string/jumbo v2, "address"

    aput-object v2, v1, v7

    const-string/jumbo v2, "date"

    aput-object v2, v1, v8

    const-string/jumbo v2, "read"

    aput-object v2, v1, v9

    const-string/jumbo v2, "type"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "status"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "locked"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "error_code"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_CONVO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v6

    const-string/jumbo v2, "m_id"

    aput-object v2, v1, v7

    const-string/jumbo v2, "m_size"

    aput-object v2, v1, v8

    const-string/jumbo v2, "sub"

    aput-object v2, v1, v9

    const-string/jumbo v2, "ct_t"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "text_only"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "date"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "date_sent"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "read"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "msg_box"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "st"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "pri"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "address"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_CONVO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v6

    const-string/jumbo v2, "address"

    aput-object v2, v1, v7

    const-string/jumbo v2, "body"

    aput-object v2, v1, v8

    const-string/jumbo v2, "date"

    aput-object v2, v1, v9

    const-string/jumbo v2, "read"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "type"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "status"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "content_type"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "locked"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->RCS_CHAT_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v6

    const-string/jumbo v2, "address"

    aput-object v2, v1, v7

    const-string/jumbo v2, "file_name"

    aput-object v2, v1, v8

    const-string/jumbo v2, "date"

    aput-object v2, v1, v9

    const-string/jumbo v2, "read"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "type"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "status"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "content_type"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "locked"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->RCS_FT_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "date"

    aput-object v2, v1, v6

    const-string/jumbo v2, "snippet"

    aput-object v2, v1, v7

    const-string/jumbo v2, "snippet_cs"

    aput-object v2, v1, v8

    const-string/jumbo v2, "read"

    aput-object v2, v1, v9

    const-string/jumbo v2, "recipient_ids"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "thread_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "thread_name"

    aput-object v2, v1, v6

    const-string/jumbo v2, "read_status"

    aput-object v2, v1, v7

    const-string/jumbo v2, "last_thread_activity"

    aput-object v2, v1, v8

    const-string/jumbo v2, "convo_summary"

    aput-object v2, v1, v9

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->CONVO_VERSION_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_ID:I

    const-string/jumbo v1, "date"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    const-string/jumbo v1, "snippet"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET:I

    const-string/jumbo v1, "snippet_cs"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET_CS:I

    const-string/jumbo v1, "read"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    const-string/jumbo v1, "recipient_ids"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    const-string/jumbo v0, "content://im/chat/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRcsChatUri:Landroid/net/Uri;

    const-string/jumbo v0, "content://im/ft/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRcsFtUri:Landroid/net/Uri;

    sput-object p1, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContent"

    const-string/jumbo v1, "getContentResolver failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    goto :goto_0
.end method

.method private addSmsMmsContacts(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Lcom/android/bluetooth/map/SmsMmsContacts;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 18

    invoke-virtual/range {p5 .. p5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v14, v0

    const/4 v6, 0x0

    const-string/jumbo v15, " "

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v15, v10

    new-array v11, v15, [J

    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/4 v7, 0x0

    :goto_0
    array-length v15, v10

    if-ge v7, v15, :cond_4

    :try_start_0
    aget-object v15, v10, v7

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v11, v7

    if-nez p4, :cond_2

    const/4 v6, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v12, v13}, Lcom/android/bluetooth/map/SmsMmsContacts;->getPhoneNumber(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v15, v1}, Lcom/android/bluetooth/map/SmsMmsContacts;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/bluetooth/map/MapContact;

    move-result-object v3

    sget-boolean v15, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v15, :cond_3

    const-string/jumbo v15, "BluetoothMapContent"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "  id "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    const-string/jumbo v15, "BluetoothMapContent"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "  contact name: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Lcom/android/bluetooth/map/MapContact;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "  X-BT-UID: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Lcom/android/bluetooth/map/MapContact;->getXBtUid()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    if-eqz v3, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_b

    const/4 v6, 0x0

    const/4 v15, 0x0

    array-length v0, v11

    move/from16 v16, v0

    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    aget-wide v8, v11, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/bluetooth/map/SmsMmsContacts;->getPhoneNumber(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/map/SmsMmsContacts;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/android/bluetooth/map/MapContact;

    move-result-object v3

    if-nez v3, :cond_8

    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>()V

    and-int/lit16 v0, v14, 0x800

    move/from16 v17, v0

    if-eqz v17, :cond_6

    invoke-virtual {v4, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setName(Ljava/lang/String;)V

    :cond_6
    and-int/lit8 v17, v14, 0x40

    if-eqz v17, :cond_7

    invoke-virtual {v4, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setContactId(Ljava/lang/String;)V

    :cond_7
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V

    goto :goto_3

    :cond_8
    invoke-static {v3, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->createFromMapContact(Lcom/android/bluetooth/map/MapContact;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    move-result-object v4

    and-int/lit8 v17, v14, 0x40

    if-nez v17, :cond_9

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setContactId(Ljava/lang/String;)V

    :cond_9
    and-int/lit16 v0, v14, 0x400

    move/from16 v17, v0

    if-nez v17, :cond_a

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setBtUid(Lcom/android/bluetooth/SignedLongLong;)V

    :cond_a
    and-int/lit16 v0, v14, 0x80

    move/from16 v17, v0

    if-nez v17, :cond_7

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setDisplayName(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    return v6

    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method private appendConvoListQueryParameters(Lcom/android/bluetooth/map/BluetoothMapAppParams;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12

    const-wide/16 v10, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "*"

    const-string/jumbo v8, "%"

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "org_sub_str"

    invoke-virtual {v2, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-lez v5, :cond_1

    const-string/jumbo v5, "t_begin"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    const-string/jumbo v5, "t_end"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    const-string/jumbo v5, "read"

    const-string/jumbo v8, "false"

    invoke-virtual {v2, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    :goto_0
    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v0

    :cond_4
    cmp-long v5, v0, v10

    if-lez v5, :cond_5

    const-string/jumbo v5, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    return-object v5

    :cond_6
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    const-string/jumbo v5, "read"

    const-string/jumbo v8, "true"

    invoke-virtual {v2, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .locals 2

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setLastActivity(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getType(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setCursorIndex(I)V

    return-object v0
.end method

.method private element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .locals 8

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getType(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x40

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Z)V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setCursorIndex(I)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method private extractEmailAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageEmail;)V
    .locals 23

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "extractEmailAddresses with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v21, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "message"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "_id"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "fromList"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "toList"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string/jumbo v6, "ccList"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const-string/jumbo v6, "bccList"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v19, 0x0

    const-string/jumbo v3, "fromList"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    const-string/jumbo v3, "\u0002"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "\u0002"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    array-length v3, v0

    if-lez v3, :cond_1

    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addFrom(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/16 v17, 0x0

    const/4 v15, 0x0

    const-string/jumbo v3, "toList"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4

    const-string/jumbo v3, "\u0001"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    const/16 v5, 0x3b

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    new-instance v12, Ljava/util/StringTokenizer;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ";"

    invoke-direct {v12, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v3, "\u0002"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "\u0002"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    array-length v3, v0

    if-lez v3, :cond_3

    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    :goto_1
    const/4 v11, 0x0

    const/4 v14, 0x0

    const-string/jumbo v3, "ccList"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    const-string/jumbo v3, "\u0001"

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    const/16 v5, 0x3b

    invoke-virtual {v11, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    new-instance v12, Ljava/util/StringTokenizer;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ";"

    invoke-direct {v12, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v3, "\u0002"

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "\u0002"

    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v3, v0

    if-lez v3, :cond_6

    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_7
    :goto_2
    const/4 v9, 0x0

    const/4 v13, 0x0

    const-string/jumbo v3, "bccList"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    const-string/jumbo v3, "\u0001"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    const/16 v5, 0x3b

    invoke-virtual {v9, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    new-instance v12, Ljava/util/StringTokenizer;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ";"

    invoke-direct {v12, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "\u0002"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "\u0002"

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    array-length v3, v0

    if-lez v3, :cond_9

    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_8

    :cond_a
    :goto_3
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_4
    return-void

    :cond_c
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addFrom(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v18

    :try_start_2
    const-string/jumbo v3, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Catching SecurityException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_d
    :try_start_3
    const-string/jumbo v3, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0x2c

    const/16 v5, 0x3b

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v3, :cond_e

    :cond_e
    new-instance v12, Ljava/util/StringTokenizer;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ";"

    invoke-direct {v12, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_f
    const-string/jumbo v3, "\u0002"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "\u0002"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_10

    move-object/from16 v0, v16

    array-length v3, v0

    if-lez v3, :cond_10

    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    :cond_10
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    if-eqz v10, :cond_11

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v3

    :cond_12
    :try_start_4
    const-string/jumbo v3, ","

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v3, 0x2c

    const/16 v5, 0x3b

    invoke-virtual {v11, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    new-instance v12, Ljava/util/StringTokenizer;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ";"

    invoke-direct {v12, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_13
    const-string/jumbo v3, "\u0002"

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string/jumbo v3, "\u0002"

    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_14

    move-object/from16 v0, v16

    array-length v3, v0

    if-lez v3, :cond_14

    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    :cond_14
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_15
    const-string/jumbo v3, ","

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v3, 0x2c

    const/16 v5, 0x3b

    invoke-virtual {v9, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    new-instance v12, Ljava/util/StringTokenizer;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ";"

    invoke-direct {v12, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_16
    const-string/jumbo v3, "\u0002"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string/jumbo v3, "\u0002"

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_17

    move-object/from16 v0, v16

    array-length v3, v0

    if-lez v3, :cond_17

    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :cond_17
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method private extractEmailParts(JLcom/android/bluetooth/map/BluetoothMapbMessageEmail;)V
    .locals 21

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "extractEmailParts with id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterMessagekey(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "body"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const-string/jumbo v2, "htmlContent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_2

    const-string/jumbo v2, "textContent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_2
    if-eqz v13, :cond_3

    const-string/jumbo v2, "(?s)(?i)(<title>)(.*?)(</title>)"

    const-string/jumbo v4, ""

    invoke-virtual {v13, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "(?s)(?i)(<style)(.*?)(</style>)"

    const-string/jumbo v4, ""

    invoke-virtual {v13, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "(?s)(<!--)(.*?)(-->)"

    const-string/jumbo v4, ""

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "(?s)(\\r)"

    const-string/jumbo v4, ""

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "(?s)(\\n)"

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setEmailBody(Ljava/lang/String;I)V

    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string/jumbo v9, "Content-Type: text/plain"

    const/4 v15, 0x0

    const/16 v19, 0x0

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " _id : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\n contentType : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\n partname : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageEmail$MimePart;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail$MimePart;->contentType:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail$MimePart;->partName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_5

    :try_start_1
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v12, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail$MimePart;->data:[B

    const-string/jumbo v2, "utf-8"

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->updateCharset()V

    const-string/jumbo v2, "8BIT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setEncoding(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v2, "BluetoothMapContent"

    const-string/jumbo v4, "extractEmailParts"

    invoke-static {v2, v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail$MimePart;->data:[B

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    move-exception v18

    :try_start_4
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Catching SecurityException : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v11

    :try_start_5
    const-string/jumbo v2, "BluetoothMapContent"

    const-string/jumbo v4, "extractEmailParts"

    invoke-static {v2, v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail$MimePart;->data:[B

    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v2

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method private extractIMParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V
    .locals 21

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "message"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/part"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string/jumbo v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string/jumbo v2, "charset"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "filename"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "text"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "raw_data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "cid"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "     _id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     charset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     filename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     text : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     cid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v15

    iput-object v11, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v2, "yes"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    const-string/jumbo v2, "utf-8"

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    :try_start_2
    iput-object v14, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mFileName:Ljava/lang/String;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->updateCharset()V

    return-void

    :cond_5
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "part"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->readRawDataPart(Landroid/net/Uri;J)[B

    move-result-object v2

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    if-eqz v10, :cond_2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v13

    :try_start_4
    const-string/jumbo v2, "BluetoothMapContent"

    const-string/jumbo v6, "extractIMParts"

    invoke-static {v2, v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v17

    :try_start_6
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Catching SecurityException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v12

    :try_start_7
    const-string/jumbo v2, "BluetoothMapContent"

    const-string/jumbo v6, "extractIMParts"

    invoke-static {v2, v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private extractMmsAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V
    .locals 15

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "msg_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/addr"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "address"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "insert-address-token"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v2, "type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addBcc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_2
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Catching SecurityException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :sswitch_1
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addFrom(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    :sswitch_2
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addCc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_3
        0x89 -> :sswitch_1
        0x97 -> :sswitch_2
    .end sparse-switch
.end method

.method private extractMmsParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V
    .locals 25

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v23, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/part"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string/jumbo v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string/jumbo v2, "ct"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "chset"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "fn"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v2, "text"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const-string/jumbo v2, "cid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "cl"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "cd"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "     _id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     ct : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     partname : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     charset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     filename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     text : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     fd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     cid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     cl : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n     cdisp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v22, :cond_5

    :try_start_1
    const-string/jumbo v2, "UTF-8"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    const-string/jumbo v2, "utf-8"

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mFileName:Ljava/lang/String;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->updateCharset()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/part"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->readRawDataPart(Landroid/net/Uri;J)[B

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    if-eqz v10, :cond_2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v15

    :try_start_4
    const-string/jumbo v2, "BluetoothMapContent"

    const-string/jumbo v6, "extractMmsParts"

    invoke-static {v2, v6, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v21

    :try_start_6
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Catching SecurityException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v14

    :try_start_7
    const-string/jumbo v2, "BluetoothMapContent"

    const-string/jumbo v6, "extractMmsParts"

    invoke-static {v2, v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public static getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;
    .locals 11

    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msg_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " AND type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/addr"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "address"

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "insert-address-token"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v6, ""
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v6

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v0, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Catching SecurityException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getCanonicalAddressSms(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 18

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "recipient_ids"

    const/4 v5, 0x0

    aput-object v1, v3, v5

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v5, "canonical-addresses"

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v5, "simple"

    const-string/jumbo v6, "true"

    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v11, 0x0

    const-string/jumbo v13, ""

    const/4 v14, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    :cond_0
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 v11, 0x0

    :cond_1
    if-eqz v14, :cond_8

    const/4 v15, 0x0

    const-string/jumbo v4, ""

    const-string/jumbo v1, " "

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x0

    array-length v5, v15

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v12, v15, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v17

    :try_start_1
    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Catching SecurityException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_3
    throw v1

    :cond_4
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v16

    move-object v8, v4

    :try_start_2
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "address"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_5

    :cond_7
    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_2
    return-object v13

    :catch_1
    move-exception v17

    :try_start_3
    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Catching SecurityException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
.end method

.method public static getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v8

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const-string/jumbo v0, "display_name"

    aput-object v0, v2, v10

    const-string/jumbo v3, "in_visible_group=1"

    const-string/jumbo v5, "display_name ASC"

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v10, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v8, p0

    :cond_4
    return-object v8

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v0, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Catching SecurityException : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getFolderName(II)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "deleted"

    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "inbox"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "sent"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "draft"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "outbox"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getPhoneType()I
    .locals 5

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContent"

    const-string/jumbo v3, "getPhoneType"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "phoneType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method private getRecipientAddressingEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 9

    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    array-length v8, v7

    if-eqz v8, :cond_1

    const/4 v4, 0x0

    const/4 v3, 0x1

    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_0

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    array-length v8, v7

    if-eqz v8, :cond_4

    const/4 v4, 0x0

    const/4 v3, 0x1

    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_4

    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_3

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    array-length v8, v7

    if-eqz v8, :cond_7

    const/4 v4, 0x0

    const/4 v3, 0x1

    :goto_2
    array-length v8, v7

    if-ge v4, v8, :cond_7

    aget-object v8, v7, v4

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_6

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private getRecipientNameEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 9

    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    array-length v8, v7

    if-eqz v8, :cond_1

    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_1

    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    array-length v8, v7

    if-eqz v8, :cond_4

    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_4

    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_3

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    array-length v8, v7

    if-eqz v8, :cond_7

    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_2
    array-length v8, v7

    if-ge v3, v8, :cond_7

    aget-object v8, v7, v3

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_6

    const-string/jumbo v8, "; "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 13

    const-string/jumbo v10, ""

    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/part"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "ct"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "text/plain"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "text"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    return-object v10

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v0, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Catching SecurityException : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getType(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_2

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    if-ne v1, v3, :cond_1

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    :cond_2
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    :cond_3
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    :cond_4
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    :cond_5
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v3, :cond_6

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    :cond_6
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0
.end method

.method private imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "imSelected msgType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v5

    :cond_1
    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_2

    return v5

    :cond_2
    return v4
.end method

.method private matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 5

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string/jumbo v2, "*"

    const-string/jumbo v3, ".*"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorRcs(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "matchOriginator: Unknown msg type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private matchOriginatorMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x89

    invoke-static {v5, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v3, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private matchOriginatorRcs(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const-string/jumbo v4, "address"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private matchOriginatorSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const-string/jumbo v4, "address"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 5

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string/jumbo v2, "*"

    const-string/jumbo v3, ".*"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientRcs(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "matchRecipient: Unknown msg type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private matchRecipientMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x97

    invoke-static {v5, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v3, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private matchRecipientRcs(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "address"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private matchRecipientSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "address"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method private populateImEmailConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V
    .locals 14

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCursorIndex()I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v10

    long-to-int v3, v10

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v10, 0x2

    invoke-virtual {p1, v10, v11, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v10, 0x1

    if-ne v10, v5, :cond_f

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p1, v5, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_10

    invoke-virtual {p1, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    :goto_1
    and-int/lit8 v5, v3, 0x8

    if-eqz v5, :cond_2

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->updateImEmailConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    :cond_2
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_3

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v5, v3, 0x20

    if-eqz v5, :cond_e

    :cond_4
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>()V

    and-int/lit16 v5, v3, 0x400

    if-eqz v5, :cond_5

    new-instance v5, Lcom/android/bluetooth/SignedLongLong;

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColBtUid:I

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    invoke-direct {v5, v10, v11, v12, v13}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setBtUid(Lcom/android/bluetooth/SignedLongLong;)V

    :cond_5
    and-int/lit16 v5, v3, 0x100

    if-eqz v5, :cond_6

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColChatState:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setChatState(I)V

    :cond_6
    and-int/lit16 v5, v3, 0x1000

    if-eqz v5, :cond_7

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceState:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceAvailability(I)V

    :cond_7
    and-int/lit16 v5, v3, 0x2000

    if-eqz v5, :cond_8

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceText:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceStatus(Ljava/lang/String;)V

    :cond_8
    and-int/lit16 v5, v3, 0x4000

    if-eqz v5, :cond_9

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPriority:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPriority(I)V

    :cond_9
    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_a

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColNickname:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setDisplayName(Ljava/lang/String;)V

    :cond_a
    and-int/lit8 v5, v3, 0x40

    if-eqz v5, :cond_b

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColContactUci:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setContactId(Ljava/lang/String;)V

    :cond_b
    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_c

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColLastActive:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setLastActivity(J)V

    :cond_c
    and-int/lit16 v5, v3, 0x800

    if-eqz v5, :cond_d

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColName:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setName(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v5, v10, v6

    if-eqz v5, :cond_4

    :cond_e
    return-void

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_10
    const-wide/16 v10, -0x1

    invoke-virtual {p1, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    goto/16 :goto_1
.end method

.method private populateSmsMmsConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/SmsMmsContacts;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCursorIndex()I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v4

    long-to-int v12, v4

    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_ID:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    const/4 v13, 0x1

    :goto_0
    and-int/lit8 v4, v12, 0x4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    :goto_1
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_7

    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    :goto_2
    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->updateSmsMmsConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    :cond_0
    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_1

    const-string/jumbo v4, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v4, v12, 0x10

    if-eqz v4, :cond_3

    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET_CS:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v14, :cond_2

    if-eqz v10, :cond_2

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_2
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v4, v12, 0x20

    if-eqz v4, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    sget v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/map/BluetoothMapContent;->addSmsMmsContacts(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Lcom/android/bluetooth/map/SmsMmsContacts;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    :cond_4
    return-void

    :cond_5
    const/4 v13, 0x0

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    goto :goto_1

    :cond_7
    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    goto :goto_2

    :cond_8
    :try_start_0
    new-instance v15, Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v15, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v15

    goto :goto_3

    :catch_0
    move-exception v11

    goto :goto_3
.end method

.method private readRawDataPart(Landroid/net/Uri;J)[B
    .locals 12

    new-instance v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v3, 0x0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v0, v1, [B

    const/4 v6, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v9, "BluetoothMapContent"

    const-string/jumbo v10, "Error reading part data"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    :goto_1
    return-object v6

    :cond_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v9

    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    throw v9
.end method

.method private setAttachment(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_0

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColAttachmentSize:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setAttachmentSize(I)V

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/32 v6, 0x400000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setAttachmentMimeTypes(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentSize:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentMime:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setConvoRead(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x1000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private setConvoWhereFilterSmsMms(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;",
            "Lcom/android/bluetooth/map/BluetoothMapAppParams;",
            ")V"
        }
    .end annotation

    const-wide/16 v6, -0x1

    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const-string/jumbo v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const-string/jumbo v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    const-string/jumbo v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    const-string/jumbo v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_4
    const-wide/16 v0, -0x1

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v0

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    const-string/jumbo v2, " AND "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method private setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_2

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColDate:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_0
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setDateTime(J)V

    :cond_1
    return-void

    :cond_2
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColDate:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColDate:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColDate:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    goto :goto_0

    :cond_5
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_6
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDate:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private setDeliveryStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/32 v4, 0x20000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const-string/jumbo v0, "delivered"

    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDelivery:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setDeliveryStatus(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V
    .locals 3

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setFolderType(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_7

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_2

    const-string/jumbo v1, "inbox"

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setFolderType(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-ne v0, v7, :cond_3

    const-string/jumbo v1, "sent"

    goto :goto_0

    :cond_3
    if-ne v0, v8, :cond_4

    const-string/jumbo v1, "draft"

    goto :goto_0

    :cond_4
    if-eq v0, v9, :cond_5

    if-ne v0, v10, :cond_6

    :cond_5
    const-string/jumbo v1, "outbox"

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const-string/jumbo v1, "deleted"

    goto :goto_0

    :cond_7
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v2, v9, :cond_d

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_8

    const-string/jumbo v1, "inbox"

    goto :goto_0

    :cond_8
    if-ne v0, v7, :cond_9

    const-string/jumbo v1, "sent"

    goto :goto_0

    :cond_9
    if-ne v0, v8, :cond_a

    const-string/jumbo v1, "draft"

    goto :goto_0

    :cond_a
    if-eq v0, v9, :cond_b

    if-ne v0, v10, :cond_c

    :cond_b
    const-string/jumbo v1, "outbox"

    goto :goto_0

    :cond_c
    const/4 v2, 0x6

    if-eq v0, v2, :cond_b

    const-string/jumbo v1, "deleted"

    goto :goto_0

    :cond_d
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v2, v10, :cond_13

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_e

    const-string/jumbo v1, "inbox"

    goto :goto_0

    :cond_e
    if-ne v0, v7, :cond_f

    const-string/jumbo v1, "sent"

    goto :goto_0

    :cond_f
    if-ne v0, v8, :cond_10

    const-string/jumbo v1, "draft"

    goto :goto_0

    :cond_10
    if-eq v0, v9, :cond_11

    if-ne v0, v10, :cond_12

    :cond_11
    const-string/jumbo v1, "outbox"

    goto :goto_0

    :cond_12
    const/4 v2, 0x6

    if-eq v0, v2, :cond_11

    const-string/jumbo v1, "deleted"

    goto :goto_0

    :cond_13
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v2, v6, :cond_18

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_14

    const-string/jumbo v1, "inbox"

    goto/16 :goto_0

    :cond_14
    if-ne v0, v7, :cond_15

    const-string/jumbo v1, "sent"

    goto/16 :goto_0

    :cond_15
    if-ne v0, v8, :cond_16

    const-string/jumbo v1, "draft"

    goto/16 :goto_0

    :cond_16
    if-ne v0, v9, :cond_17

    const-string/jumbo v1, "outbox"

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v1, "deleted"

    goto/16 :goto_0

    :cond_18
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v2, v7, :cond_0

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v2, v8, :cond_0

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    const-string/jumbo v1, "inbox"

    goto/16 :goto_0

    :cond_19
    int-to-long v2, v0

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    const-string/jumbo v1, "sent"

    goto/16 :goto_0

    :cond_1a
    int-to-long v2, v0

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    const-string/jumbo v1, "draft"

    goto/16 :goto_0

    :cond_1b
    int-to-long v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1c

    const-string/jumbo v1, "outbox"

    goto/16 :goto_0

    :cond_1c
    int-to-long v2, v0

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    const-string/jumbo v1, "deleted"

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v1, "other"

    goto/16 :goto_0
.end method

.method private setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    const-wide/16 v0, -0x1

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_1

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColId:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_0
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setHandle(J)V

    return-void

    :cond_1
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColId:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColId:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_5
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColId:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private setLastActivity(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    const-wide/16 v0, 0x0

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eqz v2, :cond_0

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    :cond_0
    sget v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_1
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    return-void

    :cond_2
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x800

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    const-string/jumbo v2, "no"

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColPriority:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_1

    const-string/jumbo v2, "yes"

    :cond_1
    const/4 v1, 0x0

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v3, v8, :cond_2

    const-string/jumbo v3, "pri"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_2
    const/16 v3, 0x82

    if-ne v1, v3, :cond_3

    const-string/jumbo v2, "yes"

    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setPriority(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-string/jumbo v1, "no"

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColProtected:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string/jumbo v1, "yes"

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setProtect(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_1

    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColRead:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    :goto_0
    if-ne v0, v2, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x1000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    :goto_2
    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRead(ZZ)V

    return-void

    :cond_1
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColRead:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColRead:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v2, :cond_4

    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColRead:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_4
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    :cond_5
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColRead:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method private setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x100

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-string/jumbo v0, "complete"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setReceptionStatus(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 31

    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v8

    const-wide/16 v10, 0x20

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-eqz v4, :cond_2

    const/4 v12, 0x0

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v4, :cond_e

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_3

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    :cond_0
    :goto_0
    if-nez v12, :cond_1

    const-string/jumbo v12, ""

    :cond_1
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientAddressing(Ljava/lang/String;I)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v4, "thread_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "draft"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v4, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v6, "simple"

    const-string/jumbo v8, "true"

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v8, "recipient_ids"

    const/4 v9, 0x0

    aput-object v8, v6, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v17, 0x0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, " "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    :cond_4
    if-eqz v17, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    :goto_1
    move/from16 v0, v30

    if-ge v4, v0, :cond_6

    aget-object v13, v17, v4

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v8, "canonical-address"

    invoke-virtual {v6, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_2
    if-nez v12, :cond_0

    const/4 v4, 0x3

    move/from16 v0, v20

    if-ne v0, v4, :cond_0

    const-string/jumbo v4, "thread_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getCanonicalAddressSms(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :catch_0
    move-exception v24

    :try_start_1
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error getting conversation:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_1
    move-exception v22

    :try_start_2
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v4

    if-eqz v14, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v15, :cond_c

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v4

    :cond_d
    const-string/jumbo v4, "address"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_10

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColType:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    const-wide/16 v10, 0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_f

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v4, "thread_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const-string/jumbo v4, "address"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_12

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColType:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    const-wide/16 v10, 0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v4, "thread_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const-string/jumbo v4, "address"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_13

    const-string/jumbo v4, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x97

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    invoke-direct/range {p0 .. p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getRecipientAddressingEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    const-string/jumbo v4, "\u0001"

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string/jumbo v4, "\u0002"

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    const/16 v6, 0x3b

    invoke-virtual {v12, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v4, ";"

    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v25, ""

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, v29

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_15

    aget-object v4, v29, v16

    const-string/jumbo v6, "\u0002"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v6, v23, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v29

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    :cond_14
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_15
    move-object/from16 v12, v25

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v4, "\u0001"

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    const/16 v6, 0x3b

    invoke-virtual {v12, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v4, "\u0002"

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "\u0002"

    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/4 v4, 0x0

    aget-object v12, v23, v4

    goto/16 :goto_0
.end method

.method private setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 16

    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v12

    const-wide/16 v14, 0x10

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v12, :cond_5

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v12, 0x1

    if-eq v6, v12, :cond_4

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_0
    :goto_0
    if-nez v7, :cond_1

    const-string/jumbo v7, ""

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientName(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v12}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_4
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColType:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v12, 0x1

    if-eq v6, v12, :cond_6

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v12}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_6
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    goto :goto_0

    :cond_7
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_9

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColType:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v12, 0x1

    if-eq v6, v12, :cond_8

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v12}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_8
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    goto :goto_0

    :cond_9
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRecipientAddressing()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v13, 0x97

    invoke-static {v12, v4, v5, v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v12}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRecipientAddressing()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_b
    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    invoke-direct/range {p0 .. p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getRecipientNameEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v12, "\u0001"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_11

    const-string/jumbo v12, "\u0002"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    const-string/jumbo v12, "@"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_11

    :cond_c
    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v10, ""

    const/4 v3, 0x0

    :goto_2
    array-length v12, v11

    if-ge v3, v12, :cond_10

    aget-object v12, v11, v3

    const-string/jumbo v13, "\u0002"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f

    aget-object v12, v11, v3

    const-string/jumbo v13, "\u0002"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_d
    :goto_3
    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    if-eq v3, v12, :cond_e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_f
    aget-object v12, v11, v3

    const-string/jumbo v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v11, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_10
    move-object v7, v10

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v12, "\u0001"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v12, "\u0002"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "\u0002"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    array-length v13, v9

    :goto_4
    if-ge v12, v13, :cond_0

    aget-object v2, v9, v12

    move-object v7, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_4
.end method

.method private setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 19

    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    const/4 v8, 0x0

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_7

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v2, 0x1

    if-ne v13, v2, :cond_3

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    :goto_0
    if-nez v18, :cond_4

    :cond_0
    :goto_1
    if-nez v8, :cond_1

    const-string/jumbo v8, ""

    :cond_1
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderAddressing(Ljava/lang/String;I)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_0

    :cond_4
    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "[0-9]*[a-zA-Z]+[0-9]*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_6

    :cond_5
    :goto_2
    move-object/from16 v8, v18

    goto :goto_1

    :cond_6
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_b

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColType:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v2, 0x1

    if-ne v13, v2, :cond_9

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    :goto_3
    if-eqz v18, :cond_0

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "[0-9]*[a-zA-Z]+[0-9]*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_a

    :cond_8
    :goto_4
    move-object/from16 v8, v18

    goto :goto_1

    :cond_9
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_3

    :cond_a
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_f

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColType:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v2, 0x1

    if-ne v13, v2, :cond_d

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    :goto_5
    if-eqz v18, :cond_0

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "[0-9]*[a-zA-Z]+[0-9]*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_e

    :cond_c
    :goto_6
    move-object/from16 v8, v18

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_5

    :cond_e
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_6

    :cond_f
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x89

    invoke-static {v2, v14, v15, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    :cond_10
    move-object/from16 v8, v18

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_12

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string/jumbo v2, "\u0002"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u0002"

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x0

    aget-object v8, v17, v2

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ConvoContact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "convo_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string/jumbo v2, "x_bt_uci"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_13
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_0
    move-exception v16

    :try_start_1
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Catching SecurityException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v12, :cond_14

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v2
.end method

.method private setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 19

    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_5

    const-string/jumbo v2, "type"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v2, 0x1

    if-ne v14, v2, :cond_4

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_0
    if-nez v15, :cond_1

    const-string/jumbo v15, ""

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderName(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_4
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_7

    const-string/jumbo v2, "type"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v2, 0x1

    if-ne v14, v2, :cond_6

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_6
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    goto :goto_0

    :cond_7
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_9

    const-string/jumbo v2, "type"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v2, 0x1

    if-ne v14, v2, :cond_8

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getSenderAddressing()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x89

    invoke-static {v2, v12, v13, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v16

    :goto_1
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getSenderAddressing()Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_b
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    const-string/jumbo v2, "\u0002"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u0002"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x0

    move-object/from16 v0, v18

    array-length v4, v0

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v8, v18, v2

    move-object v15, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ConvoContact"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "convo_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    :cond_d
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v17

    :try_start_1
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Catching SecurityException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v9, :cond_e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2
.end method

.method private setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 7

    const/4 v6, 0x2

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x2000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_2

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    if-ne v0, v6, :cond_7

    const-string/jumbo v1, "yes"

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSent(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_4
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_5
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v2, v6, :cond_6

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_6
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "no"

    goto :goto_1
.end method

.method private setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v2, :cond_3

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSize(I)V

    :cond_2
    return-void

    :cond_3
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColSubject:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_4
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColSubject:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_5
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSize:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    :cond_7
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_8
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_9
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSize:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method private setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 12

    const-string/jumbo v4, ""

    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    const/16 v1, 0x20

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v7, :cond_4

    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_0
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v1, :cond_e

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-virtual {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSubject(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColSubject:I

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_a

    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColSubject:I

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, ".tmp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "before subject: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v7, "\\."

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, ""

    if-eqz v6, :cond_9

    const/4 v0, 0x0

    :goto_2
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ge v0, v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move-object v4, v5

    :cond_9
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "after subject: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSubject:I

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_b
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v7, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_c
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_d

    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    :cond_d
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSubject:I

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_e
    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    goto/16 :goto_1
.end method

.method private setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v6

    const-wide/16 v8, 0x200

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    const-string/jumbo v0, ""

    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eqz v5, :cond_0

    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    :cond_0
    const-string/jumbo v0, "yes"

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setText(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v5, v10, :cond_6

    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v10, :cond_4

    const-string/jumbo v0, "yes"

    goto :goto_0

    :cond_4
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    const-string/jumbo v0, "yes"

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "no"

    goto :goto_0

    :cond_6
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    :cond_7
    const-string/jumbo v0, "yes"

    goto :goto_0
.end method

.method private setThreadId(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/32 v6, 0x40000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v3, :cond_2

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColThreadId:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_0
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setThreadId(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    :cond_1
    return-void

    :cond_2
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColThreadId:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    :cond_3
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColThreadId:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    :cond_4
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColThreadId:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    :cond_5
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :cond_6
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadId:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0
.end method

.method private setThreadName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6

    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/32 v4, 0x80000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadName:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setThreadName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    if-eqz p3, :cond_0

    aput-object p2, v2, v5

    invoke-virtual {p1, p2, v3, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    aput-object p2, v2, v5

    invoke-virtual {p1, p2, v3, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addRecipient(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 24

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v15

    :cond_0
    const/4 v1, 0x0

    aput-object p2, v21, v1

    const/16 v17, 0x0

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x2

    if-ge v1, v5, :cond_2

    :cond_1
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v1, "11"

    const/4 v5, 0x0

    aput-object v1, v21, v5

    :goto_0
    if-eqz v14, :cond_8

    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v10, "contact_id = ?"

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v14, v11, v1

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    if-eqz v22, :cond_4

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v18, 0x0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v11, v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v19, v18

    :goto_1
    :try_start_1
    const-string/jumbo v1, "data1"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v18, v19, 0x1

    aput-object v16, v11, v19

    if-eqz v22, :cond_5

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v19, v18

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const-string/jumbo v1, "display_name"

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-string/jumbo v4, "in_visible_group=1"

    const-string/jumbo v6, "_id ASC"

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v1, "display_name"

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    :cond_3
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v23

    :try_start_3
    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Catching SecurityException : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    throw v1

    :cond_4
    move-object/from16 v11, v17

    :cond_5
    :goto_2
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    :goto_3
    if-eqz p3, :cond_6

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object v8, v15

    move-object v9, v15

    move-object/from16 v10, v21

    invoke-virtual/range {v7 .. v13}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :goto_4
    return-object v15

    :catch_1
    move-exception v23

    move-object/from16 v11, v17

    :goto_5
    :try_start_4
    const-string/jumbo v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Catching SecurityException : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object/from16 v11, v17

    :goto_6
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    throw v1

    :cond_6
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object v8, v15

    move-object v9, v15

    move-object/from16 v10, v21

    invoke-virtual/range {v7 .. v13}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v23

    goto :goto_5

    :cond_7
    move-object/from16 v11, v17

    goto :goto_2

    :cond_8
    move-object/from16 v11, v17

    goto :goto_3
.end method

.method private setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND (message_type = 0 OR message_type = 5 OR message_type = 6 OR message_type = 30 OR message_type = 40)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterMessageHandle(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterOriginatorEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterRecipientEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterOriginatorIM(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterThreadId(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setWhereFilterAccountKey(J)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accountkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "1=1"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeRcs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeEmail(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeIm(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setWhereFilterFolderTypeEmail(J)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, ""

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mailboxKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "BluetoothMapContent"

    const-string/jumbo v2, "setWhereFilterFolderTypeEmail: not valid!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid folder ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setWhereFilterFolderTypeIm(J)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, ""

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mailboxKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "BluetoothMapContent"

    const-string/jumbo v2, "setWhereFilterFolderTypeIm: not valid!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid folder ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setWhereFilterFolderTypeMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    const-string/jumbo v1, "inbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "msg_box = 1 AND thread_id <> -1"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "outbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "msg_box = 4 AND thread_id <> -1"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "sent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "msg_box = 2 AND thread_id <> -1"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "draft"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "msg_box = 3 AND (thread_id IS NULL OR thread_id <> -1 )"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "deleted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "thread_id = -1"

    goto :goto_0
.end method

.method private setWhereFilterFolderTypeRcs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    const-string/jumbo v1, "inbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "type = 1 AND thread_id <> -1"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "outbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "(type = 4 OR type = 5 OR type = 6) AND thread_id <> -1"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "sent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "type = 2 AND thread_id <> -1"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "draft"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "type = 3 AND (thread_id IS NULL OR thread_id <> -1 ) "

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "deleted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "thread_id = -1"

    goto :goto_0
.end method

.method private setWhereFilterFolderTypeSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    const-string/jumbo v1, "inbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "type = 1 AND thread_id <> -1"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "outbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "(type = 4 OR type = 5 OR type = 6) AND thread_id <> -1"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "sent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "type = 2 AND thread_id <> -1"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "draft"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "type = 3 AND (thread_id IS NULL OR thread_id <> -1 )"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "deleted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "thread_id = -1"

    goto :goto_0
.end method

.method private setWhereFilterLastActivity(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_1

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v6, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v1, v7, :cond_4

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v8, :cond_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND last_thread_activity >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v6, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v1, v7, :cond_7

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v8, :cond_1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND last_thread_activity < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private setWhereFilterMessageHandle(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v3, ""

    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandleString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setWhereFilterMessagekey(J)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " messageKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setWhereFilterOriginatorEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "*"

    const-string/jumbo v3, "%"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " AND fromList LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private setWhereFilterOriginatorIM(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "*"

    const-string/jumbo v3, "%"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " AND fromList LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v1, v9, :cond_3

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v6, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v1, v7, :cond_6

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v8, :cond_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND timeStamp >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v1, v9, :cond_8

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v6, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v1, v7, :cond_b

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v8, :cond_1

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND timeStamp < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v0

    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v2, v4, :cond_0

    if-ne v0, v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND pri<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v2, v5, :cond_1

    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_1
    if-ne v0, v5, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND importance!=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    if-ne v0, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND pri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND importance=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v0, " AND read= 0"

    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string/jumbo v0, " AND read= 1"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    :cond_3
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const-string/jumbo v0, " AND read= 0"

    :cond_4
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string/jumbo v0, " AND read= 1"

    goto :goto_0

    :cond_5
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    const-string/jumbo v0, " AND read= 0"

    :cond_6
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string/jumbo v0, " AND read= 1"

    goto :goto_0

    :cond_7
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_8
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    const-string/jumbo v0, " AND flagRead= 0"

    :cond_9
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string/jumbo v0, " AND flagRead= 1"

    goto :goto_0
.end method

.method private setWhereFilterRecipientEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "*"

    const-string/jumbo v3, "%"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " AND (toList LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%\' OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ccList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%\' OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "bccList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%\' )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private setWhereFilterThreadId(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v3, ""

    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoIdString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AND threadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    iget v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v3

    :cond_0
    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_1

    return v3

    :cond_1
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_2

    if-ne v1, v3, :cond_2

    return v3

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    return v3

    :cond_3
    return v4
.end method

.method private updateImEmailConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V
    .locals 12

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCpConvoId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-nez v1, :cond_1

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "BluetoothMapContent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Added new conversation with ID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    const-wide/16 v10, 0x2

    invoke-virtual {v1, v10, v11, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    :cond_1
    iget v9, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget v9, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget v9, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-eqz v9, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v9

    if-eq v8, v9, :cond_3

    const/4 v0, 0x1

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    const/4 v6, 0x1

    sget-boolean v9, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v9, :cond_5

    const-string/jumbo v9, "BluetoothMapContent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "conversation with ID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " changed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    :cond_6
    if-eqz v6, :cond_7

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateImEmailConvoListVersionCounter()V

    :cond_7
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getVersionCounter()J

    move-result-wide v10

    invoke-virtual {p3, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    return-void

    :cond_8
    const/4 v8, 0x0

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateSmsMmsConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V
    .locals 10

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCpConvoId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x1

    invoke-virtual {v1, v8, v9, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    :cond_0
    sget v8, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sget v8, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v8

    if-eq v7, v8, :cond_2

    const/4 v0, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    :cond_2
    if-eqz v0, :cond_3

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    :cond_3
    if-eqz v6, :cond_4

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateSmsMmsConvoListVersionCounter()V

    :cond_4
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getVersionCounter()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    return-void

    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convoListing(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)Lcom/android/bluetooth/map/BluetoothMapConvoListing;
    .locals 46

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "convoListing:  messageType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v21, Lcom/android/bluetooth/map/BluetoothMapConvoListing;

    invoke-direct/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v8

    const-wide/16 v18, -0x1

    cmp-long v6, v8, v18

    if-eqz v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v8

    const-wide/16 v18, 0x0

    cmp-long v6, v8, v18

    if-nez v6, :cond_2

    :cond_1
    const-wide/16 v8, 0xe1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoParameterMask(J)V

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "convoListing(): appParameterMask is zero or not present, changing to default: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v25, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    const/16 v39, 0x0

    const/16 v26, 0x0

    if-eqz p2, :cond_13

    const/16 v33, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v6

    not-int v6, v6

    and-int/lit8 v32, v6, 0x1f

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    add-int v31, v6, v8

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_3
    const-string/jumbo v28, ""

    if-nez p2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " LIMIT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    :cond_4
    new-instance v40, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "date DESC"

    move-object/from16 v0, v40

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_6

    and-int/lit8 v6, v32, -0x4

    or-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " LIMIT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " OFFSET "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SMS Limit => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v33, 0x0

    :cond_6
    new-instance v37, Ljava/lang/StringBuilder;

    const/16 v6, 0x78

    move-object/from16 v0, v37

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v38, Ljava/util/ArrayList;

    const/16 v6, 0xc

    move-object/from16 v0, v38

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    const-string/jumbo v6, "1=1 "

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v25

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setConvoWhereFilterSmsMms(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    const/4 v10, 0x0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v10, v6, [Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_7
    sget-object v6, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v8, "simple"

    const-string/jumbo v9, "true"

    invoke-virtual {v6, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_8

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Query using selection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - sortOrder: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    if-eqz v39, :cond_b

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " sms/mms conversations."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v12, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_14

    const/16 v22, 0x0

    :cond_a
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v25

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-result-object v12

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    add-int/lit8 v22, v22, 0x1

    if-nez p2, :cond_a

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_a

    :cond_b
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_1b

    :cond_c
    const/16 v22, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x2

    move-object/from16 v0, v25

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    :cond_d
    :goto_2
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_e

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "msgType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "Conversation"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->appendConvoListQueryParameters(Lcom/android/bluetooth/map/BluetoothMapAppParams;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v16

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_f

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "URI with parameters: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v17, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONVERSATION_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v20, "last_thread_activity DESC, thread_id ASC"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    if-eqz v26, :cond_1b

    const/16 v23, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailImConvoColumns(Landroid/database/Cursor;)V

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v27

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_10

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " EMAIL/IM conversations. isValid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v27, :cond_1b

    if-nez p2, :cond_11

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_1b

    :cond_11
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    :goto_3
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_12

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  threadId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v42

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " newThreadId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    cmp-long v6, v34, v42

    if-nez v6, :cond_10

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v27, 0x1

    :goto_4
    if-eqz v27, :cond_10

    goto :goto_3

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v33

    goto/16 :goto_0

    :cond_14
    :try_start_1
    new-instance v13, Lcom/android/bluetooth/map/SmsMmsContacts;

    invoke-direct {v13}, Lcom/android/bluetooth/map/SmsMmsContacts;-><init>()V

    :cond_15
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v25

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-result-object v12

    sget v6, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v11, p0

    move-object/from16 v16, p1

    invoke-direct/range {v11 .. v16}, Lcom/android/bluetooth/map/BluetoothMapContent;->addSmsMmsContacts(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Lcom/android/bluetooth/map/SmsMmsContacts;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_15

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    if-nez p2, :cond_15

    if-gtz v31, :cond_15

    goto/16 :goto_1

    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x3

    move-object/from16 v0, v25

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v36

    :try_start_2
    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Catching SecurityException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v26, :cond_17

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_17
    if-eqz v39, :cond_18

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    :cond_18
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_19

    const-string/jumbo v6, "BluetoothMapContent"

    const-string/jumbo v8, "conversation end"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_5
    return-object v21

    :cond_1a
    const/16 v27, 0x0

    goto/16 :goto_4

    :cond_1b
    :try_start_3
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_1c

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Done adding conversations - list size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1c
    if-eqz p2, :cond_20

    if-eqz v26, :cond_1d

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_1d
    if-eqz v39, :cond_1e

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    :cond_1e
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_1f

    const-string/jumbo v6, "BluetoothMapContent"

    const-string/jumbo v8, "conversation end"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-object v21

    :cond_20
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->sort()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->segment(II)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getList()Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v30

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_21

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "List Size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/16 v41, 0x0

    new-instance v13, Lcom/android/bluetooth/map/SmsMmsContacts;

    invoke-direct {v13}, Lcom/android/bluetooth/map/SmsMmsContacts;-><init>()V

    const/16 v45, 0x0

    :goto_6
    move/from16 v0, v45

    move/from16 v1, v30

    if-ge v0, v1, :cond_2a

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v44

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContent;->-getcom-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues()[I

    move-result-object v6

    invoke-virtual/range {v44 .. v44}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const/16 v41, 0x0

    :cond_22
    :goto_7
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_23

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Working on cursor of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    if-eqz v41, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v41

    move-object/from16 v3, p1

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->populateImEmailConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    :cond_24
    :goto_8
    add-int/lit8 v45, v45, 0x1

    goto :goto_6

    :pswitch_1
    const/16 v41, 0x0

    if-eqz v39, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v39

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->populateSmsMmsConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/SmsMmsContacts;)V

    :cond_25
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_22

    const/4 v6, 0x3

    move-object/from16 v0, v25

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v6

    if-eqz v26, :cond_26

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_26
    if-eqz v39, :cond_27

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    :cond_27
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v8, :cond_28

    const-string/jumbo v8, "BluetoothMapContent"

    const-string/jumbo v9, "conversation end"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    throw v6

    :pswitch_2
    move-object/from16 v41, v26

    const/4 v6, 0x2

    :try_start_5
    move-object/from16 v0, v25

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto :goto_7

    :pswitch_3
    move-object/from16 v41, v26

    const/4 v6, 0x3

    move-object/from16 v0, v25

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto :goto_7

    :cond_29
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_24

    const-string/jumbo v6, "BluetoothMapContent"

    const-string/jumbo v8, "tmpCursor is Null - something is wrong - or the message is of type SMS/MMS"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :cond_2a
    if-eqz v26, :cond_2b

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_2b
    if-eqz v39, :cond_2c

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    :cond_2c
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_19

    const-string/jumbo v6, "BluetoothMapContent"

    const-string/jumbo v8, "conversation end"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getEmailMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TYPE_MESSAGE (GET): Attachment = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Charset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", FractionRequest = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "EMAIL charset not UTF-8"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "FRACTION_REQUEST_NEXT does not make sence as we always return the full message."

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v18, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    invoke-direct/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "_ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-eqz v4, :cond_d

    const/16 v17, 0x0

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v13

    const/4 v4, -0x1

    if-eq v13, v4, :cond_4

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_3

    if-nez v13, :cond_8

    const-string/jumbo v16, "FIRST"

    :goto_0
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getEmailMessage - FractionRequest "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - send compete message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v4, "CASE flagLoaded WHEN 1 THEN \'complete\' WHEN 2 THEN \'fractioned\' ELSE \'notification\' END"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "complete"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "BluetoothMapContent"

    const-string/jumbo v6, "getEmailMessage - receptionState not COMPLETE -  Not Implemented!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v4, "flagRead"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    const-string/jumbo v4, "1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setStatus(Z)V

    :goto_1
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setVersionString(Ljava/lang/String;)V

    const-string/jumbo v4, "mailboxKey"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setCompleteFolder(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v4, "subject"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setSubject(Ljava/lang/String;I)V

    const-string/jumbo v4, "Content-Type: text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setContentType(Ljava/lang/String;)V

    const-string/jumbo v4, "timeStamp"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setDate(J)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setIncludeAttachments(Z)V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractEmailParts(JLcom/android/bluetooth/map/BluetoothMapbMessageEmail;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractEmailAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageEmail;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->encodeEmail()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-eqz v10, :cond_6

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v4

    :cond_8
    :try_start_3
    const-string/jumbo v16, "NEXT"

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setStatus(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    if-eqz v10, :cond_a

    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v4
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v20

    :try_start_5
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Catching SecurityException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "EMAIL handle not found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    const/4 v4, 0x1

    goto :goto_2

    :cond_d
    if-eqz v10, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v4

    if-eqz v10, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4
.end method

.method public getIMMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "IM charset native not allowed for IM - must be utf-8"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v20, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "_ID = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setVersionString(Ljava/lang/String;)V

    const-string/jumbo v4, "flagRead"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V

    :goto_0
    const-string/jumbo v4, "threadId"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v24, v0

    const-string/jumbo v4, "mailboxKey"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object/from16 v0, p4

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setCompleteFolder(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v4, "subject"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setSubject(Ljava/lang/String;)V

    const-string/jumbo v4, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setMessageId(Ljava/lang/String;)V

    const-string/jumbo v4, "timeStamp"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setDate(J)V

    const-string/jumbo v4, "attachmentSize"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setTextOnly(Z)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setIncludeAttachments(Z)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v21

    const-string/jumbo v4, "body"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    const-string/jumbo v4, "utf-8"

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    const-string/jumbo v4, "0"

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    const-string/jumbo v4, "text/plain"

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->updateCharset()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "ConvoContact"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "convo_id = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "name"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/String;

    const-string/jumbo v4, "x_bt_uid"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v13, v6

    const-string/jumbo v4, "nickname"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/String;

    const/4 v4, 0x1

    new-array v15, v4, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getUciFull()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v15, v6

    const-string/jumbo v4, "x_bt_uci"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v14, v6

    const-wide/16 v26, 0x2

    cmp-long v4, v18, v26

    if-eqz v4, :cond_2

    const-wide/16 v26, 0x4

    cmp-long v4, v18, v26

    if-nez v4, :cond_b

    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, v20

    invoke-virtual/range {v8 .. v14}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v15}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addOriginator([Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encode()[B
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v17, :cond_5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v4

    :cond_6
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v23

    :try_start_2
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "IM handle not found"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_b
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, v20

    :try_start_3
    invoke-virtual/range {v8 .. v14}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v15}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addRecipient([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v4

    if-eqz v16, :cond_c

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v17, :cond_d

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v4

    :cond_e
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method getImEmailConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "FRACTION_REQUEST_NEXT does not make sence as we always return the full message."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContent;->-getcom-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid message handle."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMessage(JI)[B

    move-result-object v3

    return-object v3

    :pswitch_1
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMmsMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B

    move-result-object v3

    return-object v3

    :pswitch_2
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getEmailMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B

    move-result-object v3

    return-object v3

    :pswitch_3
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getRcsChatMessage(JI)[B

    move-result-object v3

    return-object v3

    :pswitch_4
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getRcsFtMessage(JI)[B

    move-result-object v3

    return-object v3

    :pswitch_5
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getIMMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMmsMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MMS charset native not allowed for MMS - must be utf-8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setVersionString(Ljava/lang/String;)V

    const-string/jumbo v0, "read"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V

    :goto_0
    const-string/jumbo v0, "msg_box"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-direct {p0, v8, v11}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setFolder(Ljava/lang/String;)V

    const-string/jumbo v0, "sub"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setSubject(Ljava/lang/String;)V

    const-string/jumbo v0, "m_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setMessageId(Ljava/lang/String;)V

    const-string/jumbo v0, "ct_t"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setContentType(Ljava/lang/String;)V

    const-string/jumbo v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setDate(J)V

    const-string/jumbo v0, "text_only"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setTextOnly(Z)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setIncludeAttachments(Z)V

    invoke-direct {p0, p1, p2, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractMmsParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V

    invoke-direct {p0, p1, p2, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractMmsAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encode()[B
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Catching SecurityException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encode()[B

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getRcsChatMessage(JI)[B
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-wide/16 v20, -0x1

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-direct {v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    const/16 v16, 0x0

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRcsChatUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->RCS_CHAT_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "_ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "c.count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v14, 0x0

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v14

    :cond_1
    const/4 v4, 0x2

    if-ne v14, v4, :cond_7

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v11, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setVersionString(Ljava/lang/String;)V

    const-string/jumbo v4, "read"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v4, "1"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    :goto_1
    const-string/jumbo v4, "type"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string/jumbo v4, "thread_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setFolder(Ljava/lang/String;)V

    const-string/jumbo v4, "body"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v4, "date"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const-string/jumbo v4, "address"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_a

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    :goto_2
    if-eqz v12, :cond_3

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Original RCS Chat msgBody.length() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_3

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    invoke-virtual {v12, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "BluetoothMapContent"

    const-string/jumbo v5, "RCS Chat msgBody.length() exceed MAX_RCS_CHAT_LENGHT : 1000"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p3, :cond_c

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_b

    move-wide/from16 v0, v20

    invoke-static {v12, v13, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getDeliverPdus(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    :goto_3
    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v4

    :cond_5
    :try_start_1
    invoke-static {v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "RCS CHAT handle not found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v17

    :try_start_2
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Catching SecurityException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_4
    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B

    move-result-object v4

    return-object v4

    :cond_7
    :try_start_3
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v11, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    :cond_9
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v11, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    invoke-static {v12, v13}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getSubmitPdus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v11, v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBody(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_d
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method public getRcsFtMessage(JI)[B
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-wide/16 v22, -0x1

    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-direct {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    const/16 v17, 0x0

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRcsFtUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->RCS_FT_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "_ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v10, :cond_10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "c.count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v15, 0x0

    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v15

    :cond_1
    const/4 v4, 0x2

    if-ne v15, v4, :cond_6

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setVersionString(Ljava/lang/String;)V

    const-string/jumbo v4, "read"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v4, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    :goto_1
    const-string/jumbo v4, "type"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const-string/jumbo v4, "thread_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setFolder(Ljava/lang/String;)V

    const-string/jumbo v4, "file_name"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v4, ".tmp"

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "before msgBody: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v4, "\\."

    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v19, ""

    if-eqz v24, :cond_a

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, v24

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v11, v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v24, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v24

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    if-ge v11, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "RCS FT handle not found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v18

    :try_start_1
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Catching SecurityException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B

    move-result-object v4

    return-object v4

    :cond_6
    :try_start_2
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4

    :cond_8
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v13, v19

    :cond_a
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v4, :cond_b

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "after msgBody: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string/jumbo v4, "date"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const-string/jumbo v4, "address"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_d

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    :goto_4
    if-nez p3, :cond_f

    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_e

    move-wide/from16 v0, v22

    invoke-static {v13, v14, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getDeliverPdus(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    :goto_5
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c
    return-object v4

    :cond_d
    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_4

    :cond_e
    invoke-static {v13, v14}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getSubmitPdus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_f
    invoke-virtual {v12, v13}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBody(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :cond_10
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3
.end method

.method public getRemoteFeatureMask()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    return v0
.end method

.method public getSmsMessage(JI)[B
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-wide/16 v16, -0x1

    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-direct {v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "c.count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v12, 0x0

    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v12

    :cond_1
    const/4 v2, 0x2

    if-ne v12, v2, :cond_6

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setVersionString(Ljava/lang/String;)V

    const-string/jumbo v2, "read"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "1"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    :goto_1
    const-string/jumbo v2, "type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string/jumbo v2, "thread_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setFolder(Ljava/lang/String;)V

    const-string/jumbo v2, "body"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "address"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v15}, Lcom/android/bluetooth/map/BluetoothMapContent;->getCanonicalAddressSms(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v11

    :cond_2
    const-string/jumbo v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    :goto_2
    if-nez p3, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_a

    move-wide/from16 v0, v16

    invoke-static {v10, v11, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getDeliverPdus(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    :goto_3
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :cond_4
    :try_start_1
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "SMS handle not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v14

    :try_start_2
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Catching SecurityException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_4
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B

    move-result-object v2

    return-object v2

    :cond_6
    :try_start_3
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    :cond_8
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_2

    :cond_a
    invoke-static {v10, v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getSubmitPdus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBody(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_c
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method getSmsMmsConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public msgListing(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    .locals 41

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msgListing: messageType = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v21, Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    invoke-direct/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;-><init>()V

    const/16 v24, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v10

    const-wide/16 v14, -0x1

    cmp-long v6, v10, v14

    if-eqz v6, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    if-nez v6, :cond_2

    :cond_1
    const-wide/16 v10, 0x15ef

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setParameterMask(J)V

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msgListing(): appParameterMask is zero or not present, changing to default: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "folderElement hasSmsMmsContent = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " folderElement.hasEmailContent = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " folderElement.hasImContent = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v27, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    const/16 v37, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const-string/jumbo v29, ""

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " LIMIT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v10

    add-int/2addr v8, v10

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :cond_4
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v6

    if-eqz v6, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v6

    const/16 v8, 0x1d

    if-eq v6, v8, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v6

    const/16 v8, 0x1e

    if-ne v6, v8, :cond_7

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " LIMIT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " OFFSET "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SMS Limit => "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v33, 0x0

    :cond_7
    const/4 v6, 0x0

    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v9

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_8

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msgType: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " where: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "date DESC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    if-eqz v37, :cond_12

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Found "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " sms messages."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setSmsColumns(Landroid/database/Cursor;)V

    :cond_a
    :goto_0
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v36

    :try_start_1
    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Catching SecurityException : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v26, :cond_b

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v37, :cond_c

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v32, :cond_d

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v34, :cond_e

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v35, :cond_f

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v28, :cond_10

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_10
    :goto_1
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_11

    const-string/jumbo v6, "BluetoothMapContent"

    const-string/jumbo v8, "messagelisting end"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-object v21

    :cond_12
    :try_start_2
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getRcsSupportStatus()Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v6, 0x4

    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v13

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_13

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msgType: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " whereRcsChat: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRcsChatUri:Landroid/net/Uri;

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapContent;->RCS_CHAT_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "date DESC"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    if-eqz v34, :cond_1c

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_14

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Found "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " rcs chat messages."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setRcsChatColumns(Landroid/database/Cursor;)V

    :cond_15
    :goto_2
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    if-eqz v26, :cond_16

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_16
    if-eqz v37, :cond_17

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    :cond_17
    if-eqz v32, :cond_18

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    :cond_18
    if-eqz v34, :cond_19

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    :cond_19
    if-eqz v35, :cond_1a

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    :cond_1a
    if-eqz v28, :cond_1b

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_1b
    throw v6

    :cond_1c
    const/4 v6, 0x5

    :try_start_3
    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v17

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_1d

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msgType: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " whereRcsFt: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRcsFtUri:Landroid/net/Uri;

    sget-object v16, Lcom/android/bluetooth/map/BluetoothMapContent;->RCS_FT_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "date DESC"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    if-eqz v35, :cond_20

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_1e

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Found "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " rcs ft messages."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setRcsFtColumns(Landroid/database/Cursor;)V

    :cond_1f
    :goto_3
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_3

    :cond_20
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMmsSupportStatus()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v6

    if-eqz v6, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v6

    const/16 v8, 0x17

    if-ne v6, v8, :cond_22

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " LIMIT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " OFFSET "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_21

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MMS Limit => "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/16 v33, 0x0

    :cond_22
    const/4 v6, 0x1

    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapContent;->INTERESTED_MESSAGE_TYPE_CLAUSE:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_25

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_23

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msgType: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " where: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "date DESC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    if-eqz v32, :cond_25

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setMmsColumns(Landroid/database/Cursor;)V

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_24

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Found "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " mms messages."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_4
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_24

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_4

    :cond_25
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailSupportStatus()Z

    move-result v6

    if-eqz v6, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v6

    const/16 v8, 0x1b

    if-ne v6, v8, :cond_27

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " LIMIT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " OFFSET "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_26

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Email Limit => "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/16 v33, 0x0

    :cond_27
    const/4 v6, 0x2

    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " AND accountKey == "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2a

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_28

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msgType: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " where: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "message"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeStamp DESC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    if-eqz v26, :cond_2a

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_29

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Found "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " email messages."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailMessageColumns(Landroid/database/Cursor;)V

    const/16 v22, 0x0

    :goto_5
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_5

    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v6

    const/16 v8, 0xf

    if-ne v6, v8, :cond_2c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " LIMIT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " OFFSET "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_2b

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IM Limit => "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/16 v33, 0x0

    :cond_2c
    const/4 v6, 0x3

    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v9

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_2d

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msgType: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " where: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "message"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeStamp DESC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    if-eqz v28, :cond_2f

    invoke-virtual/range {v27 .. v28}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setImMessageColumns(Landroid/database/Cursor;)V

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_2e

    const-string/jumbo v6, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Found "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " im messages."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_6
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_6

    :cond_2f
    invoke-virtual/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->sort()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v6

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->segment(II)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->getList()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v31

    const/16 v38, 0x0

    const/16 v40, 0x0

    :goto_7
    move/from16 v0, v40

    move/from16 v1, v31

    if-ge v0, v1, :cond_30

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v25, :cond_36

    :cond_30
    if-eqz v26, :cond_31

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_31
    if-eqz v37, :cond_32

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    :cond_32
    if-eqz v32, :cond_33

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    :cond_33
    if-eqz v34, :cond_34

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    :cond_34
    if-eqz v35, :cond_35

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    :cond_35
    if-eqz v28, :cond_10

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_36
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v39

    if-eqz v37, :cond_3a

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    :cond_37
    move-object/from16 v38, v37

    const/4 v6, 0x0

    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    :cond_38
    :goto_8
    if-eqz v38, :cond_39

    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getCursorIndex()I

    move-result v6

    move-object/from16 v0, v38

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setAttachment(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    const/16 v8, 0xa

    if-le v6, v8, :cond_39

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setDeliveryStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setThreadId(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setThreadName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v38

    move-object/from16 v3, v27

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFolderType(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    :cond_39
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_7

    :cond_3a
    if-eqz v34, :cond_3b

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    move-object/from16 v38, v34

    const/4 v6, 0x4

    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto/16 :goto_8

    :cond_3b
    if-eqz v35, :cond_3c

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    move-object/from16 v38, v35

    const/4 v6, 0x5

    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto/16 :goto_8

    :cond_3c
    if-eqz v32, :cond_3d

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    move-object/from16 v38, v32

    const/4 v6, 0x1

    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto/16 :goto_8

    :cond_3d
    if-eqz v26, :cond_3e

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    move-object/from16 v38, v26

    const/4 v6, 0x2

    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto/16 :goto_8

    :cond_3e
    if-eqz v28, :cond_38

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    move-object/from16 v38, v28

    const/4 v6, 0x3

    move-object/from16 v0, v27

    iput v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_8
.end method

.method public msgListingHasUnread(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 25

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgListingHasUnread: folder = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v22, 0x0

    new-instance v23, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " AND read=0 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v19, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v9, "date DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v22

    :cond_1
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getRcsSupportStatus()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x4

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " AND read=0 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v20, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRcsChatUri:Landroid/net/Uri;

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapContent;->RCS_CHAT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v13, "date DESC"

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    add-int v22, v22, v4

    :cond_3
    if-eqz v20, :cond_4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    const/4 v4, 0x5

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " AND read=0 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRcsFtUri:Landroid/net/Uri;

    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapContent;->RCS_FT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v17, "date DESC"

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    if-eqz v21, :cond_5

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v4

    add-int v22, v22, v4

    :cond_5
    if-eqz v21, :cond_6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMmsSupportStatus()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " AND read=0 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v19, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v9, "date DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v4

    add-int v22, v22, v4

    :cond_7
    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailSupportStatus()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v8

    const-wide/16 v12, -0x1

    cmp-long v4, v8, v12

    if-eqz v4, :cond_a

    const/4 v4, 0x2

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " AND accountKey == "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " AND flagRead=0 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/16 v19, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v9, "timeStamp DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v4

    add-int v22, v22, v4

    :cond_9
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " AND flagRead=0 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/16 v19, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v9, "timeStamp DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result v4

    add-int v22, v22, v4

    :cond_b
    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_5
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgListingHasUnread: numUnread = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    sget v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->LIMITED_MAX_LIST_COUNT:I

    move/from16 v0, v22

    if-le v0, v4, :cond_e

    sget v22, Lcom/android/bluetooth/map/BluetoothMapUtils;->LIMITED_MAX_LIST_COUNT:I

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v4, :cond_e

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgListingHasUnread is limited "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " because it\'s bigger than LIMITED_MAX_LIST_COUNT"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-lez v22, :cond_15

    const/4 v4, 0x1

    :goto_6
    return v4

    :catch_0
    move-exception v24

    :try_start_6
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    if-eqz v19, :cond_f

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v4

    :catch_1
    move-exception v24

    :try_start_7
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v20, :cond_4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    if-eqz v20, :cond_10

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v4

    :catch_2
    move-exception v24

    :try_start_8
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v21, :cond_6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_2
    move-exception v4

    if-eqz v21, :cond_11

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v4

    :catch_3
    move-exception v24

    :try_start_9
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_3
    move-exception v4

    if-eqz v19, :cond_12

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v4

    :catch_4
    move-exception v24

    :try_start_a
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_4
    move-exception v4

    if-eqz v19, :cond_13

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v4

    :catch_5
    move-exception v24

    :try_start_b
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catchall_5
    move-exception v4

    if-eqz v19, :cond_14

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v4

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_6
.end method

.method public msgListingSize(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 25

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgListingSize: folder = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v22, 0x0

    new-instance v23, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    const/16 v19, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v9, "date DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v22

    :cond_1
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getRcsSupportStatus()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x4

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v11

    const/16 v20, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRcsChatUri:Landroid/net/Uri;

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapContent;->RCS_CHAT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v13, "date DESC"

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    add-int v22, v22, v4

    :cond_3
    if-eqz v20, :cond_4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    const/4 v4, 0x5

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v15

    const/16 v21, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRcsFtUri:Landroid/net/Uri;

    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapContent;->RCS_FT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v17, "date DESC"

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    if-eqz v21, :cond_5

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v4

    add-int v22, v22, v4

    :cond_5
    if-eqz v21, :cond_6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMmsSupportStatus()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    const/16 v19, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v9, "date DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v4

    add-int v22, v22, v4

    :cond_7
    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailSupportStatus()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x2

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " AND accountKey == "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/16 v19, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v9, "timeStamp DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_9

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result v4

    add-int v22, v22, v4

    :cond_9
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "message"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/16 v19, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v9, "timeStamp DESC"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result v4

    add-int v22, v22, v4

    :cond_b
    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_5
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v4, :cond_d

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgListingSize: size = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    sget v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->LIMITED_MAX_LIST_COUNT:I

    move/from16 v0, v22

    if-le v0, v4, :cond_e

    sget v22, Lcom/android/bluetooth/map/BluetoothMapUtils;->LIMITED_MAX_LIST_COUNT:I

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v4, :cond_e

    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "msgListingSize is limited "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " because it\'s bigger than LIMITED_MAX_LIST_COUNT"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v22

    :catch_0
    move-exception v24

    :try_start_6
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    if-eqz v19, :cond_f

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v4

    :catch_1
    move-exception v24

    :try_start_7
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v20, :cond_4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    if-eqz v20, :cond_10

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v4

    :catch_2
    move-exception v24

    :try_start_8
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v21, :cond_6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_2
    move-exception v4

    if-eqz v21, :cond_11

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v4

    :catch_3
    move-exception v24

    :try_start_9
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_3
    move-exception v4

    if-eqz v19, :cond_12

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v4

    :catch_4
    move-exception v24

    :try_start_a
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_4
    move-exception v4

    if-eqz v19, :cond_13

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v4

    :catch_5
    move-exception v24

    :try_start_b
    const-string/jumbo v4, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Catching SecurityException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catchall_5
    move-exception v4

    if-eqz v19, :cond_14

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v4
.end method

.method refreshImEmailConvoVersions()Z
    .locals 27

    const/16 v18, 0x0

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "Conversation"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "URI with parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->CONVO_VERSION_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "last_thread_activity DESC, thread_id ASC"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_12

    const/4 v9, 0x0

    invoke-virtual {v11, v14}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailImConvoColumns(Landroid/database/Cursor;)V

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " EMAIL/IM conversations. isValid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v25

    const/4 v8, 0x0

    new-instance v20, Ljava/util/HashMap;

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    if-eqz v15, :cond_10

    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-object v9, v0

    if-nez v9, :cond_2

    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x2

    :try_start_2
    invoke-virtual {v10, v6, v7, v12, v13}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    const/16 v18, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {v10, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v9, v10

    :cond_2
    :try_start_3
    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    const/16 v21, 0x1

    :goto_1
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v6

    cmp-long v2, v16, v6

    if-eqz v2, :cond_3

    const/4 v8, 0x1

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    :cond_3
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v2

    move/from16 v0, v21

    if-eq v0, v2, :cond_4

    const/4 v8, 0x1

    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    :cond_4
    if-eqz v19, :cond_5

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_5
    :goto_2
    if-eqz v26, :cond_6

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getFullSummary()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_6
    :goto_3
    iget v2, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  threadId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " newThreadId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    cmp-long v2, v22, v12

    if-nez v2, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v15, 0x1

    :goto_4
    if-nez v15, :cond_6

    :cond_8
    if-eqz v8, :cond_9

    const/16 v18, 0x1

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    :cond_9
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :goto_5
    :try_start_4
    monitor-exit v4

    throw v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v24

    :try_start_5
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Catching SecurityException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_6
    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateImEmailConvoListVersionCounter()V

    :cond_b
    return v18

    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x1

    :try_start_6
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const/4 v8, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    const/4 v15, 0x0

    goto :goto_4

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_11

    const/16 v18, 0x1

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setImEmailConvoList(Ljava/util/HashMap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_12
    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v2

    if-eqz v14, :cond_13

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v2

    :catchall_2
    move-exception v2

    move-object v9, v10

    goto :goto_5
.end method

.method refreshSmsMmsConvoVersions()Z
    .locals 24

    const/16 v16, 0x0

    const/4 v11, 0x0

    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "simple"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "date DESC"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_a

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " sms/mms conversations."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v9, 0x0

    const/4 v2, -0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v20

    new-instance v17, Ljava/util/HashMap;

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v8, 0x0

    sget v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_ID:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-object v9, v0

    if-nez v9, :cond_1

    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v22, 0x1

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    const/16 v16, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {v10, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v9, v10

    :cond_1
    :try_start_3
    sget v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    sget v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    const/16 v18, 0x1

    :goto_1
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v6

    cmp-long v2, v14, v6

    if-eqz v2, :cond_2

    const/4 v8, 0x1

    invoke-virtual {v9, v14, v15}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    :cond_2
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v2

    move/from16 v0, v18

    if-eq v0, v2, :cond_3

    const/4 v8, 0x1

    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    :cond_3
    sget v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getSmsMmsContacts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v16, 0x1

    invoke-virtual {v9, v13}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSmsMmsContacts(Ljava/lang/String;)V

    :cond_4
    if-eqz v8, :cond_5

    const/16 v16, 0x1

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :goto_2
    :try_start_4
    monitor-exit v4

    throw v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v19

    :try_start_5
    const-string/jumbo v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Catching SecurityException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    return v16

    :cond_7
    const/16 v18, 0x0

    goto :goto_1

    :cond_8
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v16, 0x1

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSmsMmsConvoList(Ljava/util/HashMap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v4

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateSmsMmsConvoListVersionCounter()V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_a
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    :catchall_2
    move-exception v2

    move-object v9, v10

    goto :goto_2
.end method

.method setImEmailConvoList(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setImEmailConvoList(Ljava/util/HashMap;)V

    return-void
.end method

.method public setRemoteFeatureMask(I)V
    .locals 2

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapContent"

    const-string/jumbo v1, "setRemoteFeatureMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothMapContent"

    const-string/jumbo v1, "setRemoteFeatureMask MAP_MESSAGE_LISTING_FORMAT_V11"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    :cond_2
    return-void
.end method

.method setSmsMmsConvoList(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setSmsMmsConvoList(Ljava/util/HashMap;)V

    return-void
.end method
