.class public Lcom/android/bluetooth/map/BluetoothMapUtils;
.super Ljava/lang/Object;
.source "BluetoothMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I = null

.field public static ACTION_RECEIVE_EMAIL_INSERT_TO_DB_RESULT:Ljava/lang/String; = null

.field public static ACTION_RECEIVE_EMAIL_SEND_RESULT:Ljava/lang/String; = null

.field public static final CONVO_ID_TYPE_EMAIL_IM:J = 0x2L

.field public static final CONVO_ID_TYPE_SMS_MMS:J = 0x1L

.field private static final D:Z

.field public static EMAIL_AUTHORITY:Ljava/lang/String; = null

.field public static EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String; = null

.field public static EMAIL_CONTENT_URI:Ljava/lang/String; = null

.field public static EMAIL_PACKAGE:Ljava/lang/String; = null

.field private static ESCAPE_CHAR:B = 0x0t

.field private static final HANDLE_TYPE_EMAIL_MASK:J = 0x20000000000000L

.field private static final HANDLE_TYPE_IM_MASK:J = 0x100000000000000L

.field private static final HANDLE_TYPE_MASK:J = 0xff0000000000000L

.field private static final HANDLE_TYPE_MMS_MASK:J = 0x10000000000000L

.field private static final HANDLE_TYPE_RCS_CHAT_MASK:J = 0x200000000000000L

.field private static final HANDLE_TYPE_RCS_FT_MASK:J = 0x400000000000000L

.field private static final HANDLE_TYPE_SMS_CDMA_MASK:J = 0x80000000000000L

.field private static final HANDLE_TYPE_SMS_GSM_MASK:J = 0x40000000000000L

.field public static LIMITED_MAX_LIST_COUNT:I = 0x0

.field private static final LONG_LONG_LENGTH:I = 0x20

.field static final MAP_EVENT_REPORT_V10:I = 0xa

.field static final MAP_EVENT_REPORT_V11:I = 0xb

.field static final MAP_EVENT_REPORT_V12:I = 0xc

.field static final MAP_FEATURE_BROWSING_BIT:I = 0x4

.field static final MAP_FEATURE_CONVERSATION_VERSION_COUNTER_BIT:I = 0x2000

.field static final MAP_FEATURE_DATABASE_INDENTIFIER_BIT:I = 0x800

.field static final MAP_FEATURE_DEFAULT_BITMASK:I = 0x1f

.field static final MAP_FEATURE_DEFINED_TIMESTAMP_FORMAT_BIT:I = 0x40000

.field static final MAP_FEATURE_DELETE_BIT:I = 0x10

.field static final MAP_FEATURE_EVENT_REPORT_V12_BIT:I = 0x80

.field static final MAP_FEATURE_EXTENDED_EVENT_REPORT_11_BIT:I = 0x40

.field static final MAP_FEATURE_FOLDER_VERSION_COUNTER_BIT:I = 0x1000

.field static final MAP_FEATURE_INSTANCE_INFORMATION_BIT:I = 0x20

.field static final MAP_FEATURE_MESSAGE_FORMAT_V11_BIT:I = 0x100

.field static final MAP_FEATURE_MESSAGE_LISTING_FORMAT_V11_BIT:I = 0x200

.field static final MAP_FEATURE_NOTIFICATION_BIT:I = 0x2

.field static final MAP_FEATURE_NOTIFICATION_FILTERING_BIT:I = 0x20000

.field static final MAP_FEATURE_NOTIFICATION_REGISTRATION_BIT:I = 0x1

.field static final MAP_FEATURE_PARTICIPANT_CHAT_STATE_CHANGE_BIT:I = 0x8000

.field static final MAP_FEATURE_PARTICIPANT_PRESENCE_CHANGE_BIT:I = 0x4000

.field static final MAP_FEATURE_PBAP_CONTACT_CROSS_REFERENCE_BIT:I = 0x10000

.field static final MAP_FEATURE_PERSISTENT_MESSAGE_HANDLE_BIT:I = 0x400

.field static final MAP_FEATURE_UPLOADING_BIT:I = 0x8

.field static final MAP_MESSAGE_FORMAT_V10:I = 0xa

.field static final MAP_MESSAGE_FORMAT_V11:I = 0xb

.field static final MAP_MESSAGE_LISTING_FORMAT_V10:I = 0xa

.field static final MAP_MESSAGE_LISTING_FORMAT_V11:I = 0xb

.field static final MAP_V10_STR:Ljava/lang/String; = "1.0"

.field static final MAP_V11_STR:Ljava/lang/String; = "1.1"

.field static final MAP_V12_FEATURE_DEFAULT_BITMASK:I = 0x7f

.field static final MAP_V12_STR:Ljava/lang/String; = "1.2"

.field public static REFRESH_INBOX:Ljava/lang/String; = null

.field public static SEND_NEW_MESSAGE:Ljava/lang/String; = null

.field public static SEND_REPLY_MESSAGE:Ljava/lang/String; = null

.field public static SET_DELETE_STATUS:Ljava/lang/String; = null

.field public static SET_READ_STATUS:Ljava/lang/String; = null

.field public static SET_UNREAD_STATUS:Ljava/lang/String; = null

.field private static SPACE:B = 0x0t

.field private static TAB:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "BluetoothMapUtils"

.field private static final V:Z

.field private static mEmailSupported:Z

.field public static mIsXMLParsingFailCarkits:Z

.field private static mMmsSupported:Z

.field private static mRcsSupported:Z

.field private static mXMLParsingFailCarkits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/util/regex/Pattern;


# direct methods
.method private static synthetic -getcom-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->-com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->-com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I

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

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->-com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I

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
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    sput-boolean v1, Lcom/android/bluetooth/map/BluetoothMapUtils;->mMmsSupported:Z

    sput-boolean v1, Lcom/android/bluetooth/map/BluetoothMapUtils;->mEmailSupported:Z

    sput-boolean v1, Lcom/android/bluetooth/map/BluetoothMapUtils;->mRcsSupported:Z

    const-string/jumbo v0, "content://com.android.email.notifier/"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String;

    const-string/jumbo v0, "content://com.android.email.provider/"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    const-string/jumbo v0, "com.android.email"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_PACKAGE:Ljava/lang/String;

    const-string/jumbo v0, "com.android.email.provider"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_AUTHORITY:Ljava/lang/String;

    const-string/jumbo v0, "com.android.email.intent.action.READ_EMAIL_ITEM_FROM_OHTER_DEVICE"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->SET_READ_STATUS:Ljava/lang/String;

    const-string/jumbo v0, "com.android.email.intent.action.UNREAD_EMAIL_ITEM_FROM_OHTER_DEVICE"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->SET_UNREAD_STATUS:Ljava/lang/String;

    const-string/jumbo v0, "com.android.email.intent.action.DELETE_EMAIL_ITEM_FROM_OHTER_DEVICE"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->SET_DELETE_STATUS:Ljava/lang/String;

    const-string/jumbo v0, "com.android.email.intent.action.COMPOSE_FROM_OTHER_DEVICE"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->SEND_NEW_MESSAGE:Ljava/lang/String;

    const-string/jumbo v0, "com.android.email.intent.action.REPLY_FROM_OTHER_DEVICE"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->SEND_REPLY_MESSAGE:Ljava/lang/String;

    const-string/jumbo v0, "com.android.email.intent.action.REFRESH_EMAIL_ITEM_FROM_OHTER_DEVICE"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->REFRESH_INBOX:Ljava/lang/String;

    const-string/jumbo v0, "com.android.email.intent.action.REPLY_BACKGROUND_SENT_ID"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->ACTION_RECEIVE_EMAIL_INSERT_TO_DB_RESULT:Ljava/lang/String;

    const-string/jumbo v0, "com.android.email.intent.action.REPLY_BACKGROUND_SENT"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->ACTION_RECEIVE_EMAIL_SEND_RESULT:Ljava/lang/String;

    const/16 v0, 0x64

    sput v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->LIMITED_MAX_LIST_COUNT:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mXMLParsingFailCarkits:Ljava/util/List;

    sput-boolean v1, Lcom/android/bluetooth/map/BluetoothMapUtils;->mIsXMLParsingFailCarkits:Z

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mXMLParsingFailCarkits:Ljava/util/List;

    const-string/jumbo v1, "1C:99:4C"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "=\\?(.+?)\\?(.)\\?(.+?(?=\\?=))\\?="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->p:Ljava/util/regex/Pattern;

    const/16 v0, 0x3d

    sput-byte v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->ESCAPE_CHAR:B

    const/16 v0, 0x9

    sput-byte v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->TAB:B

    const/16 v0, 0x20

    sput-byte v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->SPACE:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final encodeQuotedPrintable([B)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/16 v7, 0x100

    const/16 v8, 0x10

    if-nez p0, :cond_0

    return-object v9

    :cond_0
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v7}, Ljava/util/BitSet;-><init>(I)V

    const/16 v5, 0x21

    :goto_0
    const/16 v7, 0x3c

    if-gt v5, v7, :cond_1

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x3e

    :goto_1
    const/16 v7, 0x7e

    if-gt v5, v7, :cond_2

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    sget-byte v7, Lcom/android/bluetooth/map/BluetoothMapUtils;->TAB:B

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    sget-byte v7, Lcom/android/bluetooth/map/BluetoothMapUtils;->SPACE:B

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    :goto_2
    array-length v7, p0

    if-ge v5, v7, :cond_5

    aget-byte v0, p0, v5

    if-gez v0, :cond_3

    add-int/lit16 v0, v0, 0x100

    :cond_3
    invoke-virtual {v6, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    sget-byte v7, Lcom/android/bluetooth/map/BluetoothMapUtils;->ESCAPE_CHAR:B

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    and-int/lit8 v7, v0, 0xf

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    :cond_5
    :try_start_0
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v2

    const-string/jumbo v7, ""

    return-object v7
.end method

.method public static getCpHandle(Ljava/lang/String;)J
    .locals 5

    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "-> MAP handle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide v2, -0xff0000000000001L    # -6.210072369202835E231

    and-long/2addr v0, v2

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothMapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "->CP handle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-wide v0
.end method

.method public static getDateTimeString(J)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getEmailSupportStatus()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mEmailSupported:Z

    return v0
.end method

.method public static getLongAsString(J)Ljava/lang/String;
    .locals 14

    const-wide/16 v12, -0x1

    const/16 v7, 0x37

    const/16 v6, 0x30

    const/16 v10, 0xa

    const/16 v5, 0x10

    new-array v2, v5, [C

    and-long v8, p0, v12

    long-to-int v3, v8

    const/16 v5, 0x20

    shr-long v8, p0, v5

    and-long/2addr v8, v12

    long-to-int v4, v8

    const/4 v1, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v1, v5, :cond_2

    and-int/lit8 v0, v4, 0xf

    if-ge v0, v10, :cond_0

    move v5, v6

    :goto_1
    add-int/2addr v0, v5

    rsub-int/lit8 v5, v1, 0x7

    int-to-char v8, v0

    aput-char v8, v2, v5

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v0, v3, 0xf

    if-ge v0, v10, :cond_1

    move v5, v6

    :goto_2
    add-int/2addr v0, v5

    rsub-int/lit8 v5, v1, 0xf

    int-to-char v8, v0

    aput-char v8, v2, v5

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v7

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method

.method public static getLongFromString(Ljava/lang/String;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BluetoothMapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLongFromString(): converting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BluetoothMapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  byte values: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    array-length v3, v4

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v3, :cond_9

    aget-byte v0, v4, v2

    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-gt v0, v5, :cond_3

    add-int/lit8 v5, v0, -0x30

    int-to-byte v0, v5

    :goto_1
    const/4 v5, 0x4

    shl-long/2addr v6, v5

    int-to-long v8, v0

    add-long/2addr v6, v8

    add-int/lit8 v1, v1, 0x1

    const/16 v5, 0x10

    if-le v1, v5, :cond_7

    new-instance v5, Ljava/lang/NullPointerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "String to large - count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    const/16 v5, 0x41

    if-lt v0, v5, :cond_4

    const/16 v5, 0x46

    if-gt v0, v5, :cond_4

    add-int/lit8 v5, v0, -0x37

    int-to-byte v0, v5

    goto :goto_1

    :cond_4
    const/16 v5, 0x61

    if-lt v0, v5, :cond_5

    const/16 v5, 0x66

    if-gt v0, v5, :cond_5

    add-int/lit8 v5, v0, -0x57

    int-to-byte v0, v5

    goto :goto_1

    :cond_5
    const/16 v5, 0x20

    if-le v0, v5, :cond_6

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_8

    :cond_6
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "BluetoothMapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skipping c = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x1

    new-array v10, v10, [B

    const/4 v11, 0x0

    aput-byte v0, v10, v11

    const-string/jumbo v11, "US-ASCII"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid character:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v5, :cond_a

    const-string/jumbo v5, "BluetoothMapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "  length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-wide v6
.end method

.method public static getLongLongAsString(JJ)Ljava/lang/String;
    .locals 12

    const/16 v8, 0x20

    new-array v3, v8, [C

    const-wide/16 v8, -0x1

    and-long/2addr v8, p0

    long-to-int v4, v8

    const/16 v8, 0x20

    shr-long v8, p0, v8

    const-wide/16 v10, -0x1

    and-long/2addr v8, v10

    long-to-int v5, v8

    const-wide/16 v8, -0x1

    and-long/2addr v8, p2

    long-to-int v6, v8

    const/16 v8, 0x20

    shr-long v8, p2, v8

    const-wide/16 v10, -0x1

    and-long/2addr v8, v10

    long-to-int v7, v8

    const/4 v2, 0x0

    :goto_0
    const/16 v8, 0x8

    if-ge v2, v8, :cond_4

    and-int/lit8 v0, v5, 0xf

    const/16 v8, 0xa

    if-ge v0, v8, :cond_0

    const/16 v8, 0x30

    :goto_1
    add-int/2addr v0, v8

    and-int/lit8 v1, v7, 0xf

    const/16 v8, 0xa

    if-ge v1, v8, :cond_1

    const/16 v8, 0x30

    :goto_2
    add-int/2addr v1, v8

    rsub-int/lit8 v8, v2, 0x17

    int-to-char v9, v0

    aput-char v9, v3, v8

    rsub-int/lit8 v8, v2, 0x7

    int-to-char v9, v1

    aput-char v9, v3, v8

    shr-int/lit8 v5, v5, 0x4

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v0, v4, 0xf

    const/16 v8, 0xa

    if-ge v0, v8, :cond_2

    const/16 v8, 0x30

    :goto_3
    add-int/2addr v0, v8

    and-int/lit8 v1, v6, 0xf

    const/16 v8, 0xa

    if-ge v1, v8, :cond_3

    const/16 v8, 0x30

    :goto_4
    add-int/2addr v1, v8

    rsub-int/lit8 v8, v2, 0x1f

    int-to-char v9, v0

    aput-char v9, v3, v8

    rsub-int/lit8 v8, v2, 0xf

    int-to-char v9, v1

    aput-char v9, v3, v8

    shr-int/lit8 v4, v4, 0x4

    shr-int/lit8 v6, v6, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v8, 0x37

    goto :goto_1

    :cond_1
    const/16 v8, 0x37

    goto :goto_2

    :cond_2
    const/16 v8, 0x37

    goto :goto_3

    :cond_3
    const/16 v8, 0x37

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_5
    const/16 v8, 0x20

    if-ge v2, v8, :cond_5

    aget-char v8, v3, v2

    const/16 v9, 0x30

    if-eq v8, v9, :cond_6

    :cond_5
    new-instance v8, Ljava/lang/String;

    rsub-int/lit8 v9, v2, 0x20

    invoke-direct {v8, v3, v2, v9}, Ljava/lang/String;-><init>([CII)V

    return-object v8

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public static getMapConvoHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "-1"

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->-getcom-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Message type not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const-wide/16 v2, 0x1

    invoke-static {p0, p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongLongAsString(JJ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    const-wide/16 v2, 0x2

    invoke-static {p0, p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongLongAsString(JJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "-1"

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils;->-getcom-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Message type not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-wide/high16 v2, 0x10000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    const-wide/high16 v2, 0x40000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-wide/high16 v2, 0x80000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const-wide/high16 v2, 0x20000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const-wide/high16 v2, 0x100000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const-wide/high16 v2, 0x200000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const-wide/high16 v2, 0x400000000000000L

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapUtils"

    const-string/jumbo v2, " Invalid messageType input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getMmsSupportStatus()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mMmsSupported:Z

    return v0
.end method

.method public static getMsgHandleAsLong(Ljava/lang/String;)J
    .locals 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    :cond_0
    const-wide/high16 v2, 0x20000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    :cond_1
    const-wide/high16 v2, 0x40000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    :cond_2
    const-wide/high16 v2, 0x80000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    :cond_3
    const-wide/high16 v2, 0x200000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    :cond_4
    const-wide/high16 v2, 0x400000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    :cond_5
    const-wide/high16 v2, 0x100000000000000L

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v2

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Message type not found in handle string."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getRcsSupportStatus()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mRcsSupported:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_1

    const v6, 0x7f07000e

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    sput-boolean v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->mMmsSupported:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Message_EnableCpm"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v6, "BluetoothMapUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[RCS] imsConfigCscFeatures : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", enableCpmFeature : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->mRcsSupported:Z

    :goto_1
    const-string/jumbo v6, "BluetoothMapUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRcsSupported : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapUtils;->mRcsSupported:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const v6, 0x7f07000f

    :try_start_2
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    sput-boolean v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->mEmailSupported:Z

    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->mEmailSupported:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    :try_start_3
    const-string/jumbo v6, "com.samsung.android.email.provider"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v6, "com.samsung.android.email.provider"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_PACKAGE:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.email.provider"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_AUTHORITY:Ljava/lang/String;

    const-string/jumbo v6, "content://com.samsung.android.email.notifier/"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_OBSERVER_URI:Ljava/lang/String;

    const-string/jumbo v6, "content://com.samsung.android.email.provider/"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_CONTENT_URI:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.email.intent.action.READ_EMAIL_ITEM_FROM_OTHER_SYSTEM_APP"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->SET_READ_STATUS:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.email.intent.action.UNREAD_EMAIL_ITEM_FROM_OTHER_SYSTEM_APP"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->SET_UNREAD_STATUS:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.email.intent.action.DELETE_EMAIL_ITEM_FROM_OTHER_SYSTEM_APP"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->SET_DELETE_STATUS:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.email.intent.action.COMPOSE_FROM_OTHER_SYSTEM_APP"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->SEND_NEW_MESSAGE:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.email.intent.action.REPLY_FROM_OTHER_SYSTEM_APP"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->SEND_REPLY_MESSAGE:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.email.intent.action.REFRESH_EMAIL_ITEM_FROM_OTHER_SYSTEM_APP"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->REFRESH_INBOX:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.email.intent.action.REPLY_BACKGROUND_SENT_ID"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->ACTION_RECEIVE_EMAIL_INSERT_TO_DB_RESULT:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.email.intent.action.REPLY_BACKGROUND_SENT"

    sput-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->ACTION_RECEIVE_EMAIL_SEND_RESULT:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "BluetoothMapUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Using Email package : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_PACKAGE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_4
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "BluetoothMapUtils"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    :try_start_5
    sput-boolean v6, Lcom/android/bluetooth/map/BluetoothMapUtils;->mRcsSupported:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v6, "BluetoothMapUtils"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_2
    move-exception v1

    const-string/jumbo v6, "BluetoothMapUtils"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method public static isXMLParsingFailCarkits(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->mXMLParsingFailCarkits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->mIsXMLParsingFailCarkits:Z

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothMapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is XML Parsing Fail Carkits ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->mIsXMLParsingFailCarkits:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sput-boolean v4, Lcom/android/bluetooth/map/BluetoothMapUtils;->mIsXMLParsingFailCarkits:Z

    return-void
.end method

.method public static printCursor(Landroid/database/Cursor;)V
    .locals 6

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->D:Z

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\nprintCursor:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timeStamp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "last_thread_activity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "last_active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "last_online"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "BluetoothMapUtils"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static quotedPrintableToUtf8(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 23

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [B

    const/4 v10, 0x0

    :try_start_0
    const-string/jumbo v17, "US-ASCII"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    :goto_0
    if-nez v10, :cond_0

    const-string/jumbo v17, ""

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    return-object v17

    :cond_0
    array-length v0, v10

    move/from16 v17, v0

    add-int/lit8 v16, v17, -0x2

    const/4 v8, 0x0

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    move/from16 v0, v16

    if-ge v8, v0, :cond_16

    aget-byte v2, v10, v8

    const/16 v17, 0x3d

    move/from16 v0, v17

    if-ne v2, v0, :cond_12

    add-int/lit8 v8, v8, 0x1

    aget-byte v3, v10, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v4, v10, v8

    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v3, v0, :cond_2

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v4, v0, :cond_2

    move v11, v12

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move v12, v11

    goto :goto_1

    :cond_2
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v3, v0, :cond_9

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v3, v0, :cond_9

    :cond_3
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v4, v0, :cond_c

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v4, v0, :cond_c

    :cond_4
    :goto_3
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v17, :cond_5

    const-string/jumbo v17, "BluetoothMapUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Found hex number: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "%c%c"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v3, v0, :cond_e

    add-int/lit8 v17, v3, -0x30

    move/from16 v0, v17

    int-to-byte v3, v0

    :cond_6
    :goto_4
    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v4, v0, :cond_10

    add-int/lit8 v17, v4, -0x30

    move/from16 v0, v17

    int-to-byte v4, v0

    :cond_7
    :goto_5
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v17, :cond_8

    const-string/jumbo v17, "BluetoothMapUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Resulting nibble values: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "b1=%x b2=%x"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-int/lit8 v11, v12, 0x1

    shl-int/lit8 v17, v3, 0x4

    or-int v17, v17, v4

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v13, v12

    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapUtils;->V:Z

    if-eqz v17, :cond_1

    const-string/jumbo v17, "BluetoothMapUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Resulting value: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "0x%2x"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, -0x1

    aget-byte v21, v13, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v3, v0, :cond_a

    const/16 v17, 0x46

    move/from16 v0, v17

    if-le v3, v0, :cond_3

    :cond_a
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v3, v0, :cond_b

    const/16 v17, 0x66

    move/from16 v0, v17

    if-le v3, v0, :cond_3

    :cond_b
    const-string/jumbo v17, "BluetoothMapUtils"

    const-string/jumbo v18, "Received wrongly quoted printable encoded text. Continuing at best effort..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v12, 0x1

    aput-byte v2, v13, v12

    add-int/lit8 v8, v8, -0x2

    goto/16 :goto_2

    :cond_c
    const/16 v17, 0x41

    move/from16 v0, v17

    if-lt v4, v0, :cond_d

    const/16 v17, 0x46

    move/from16 v0, v17

    if-le v4, v0, :cond_4

    :cond_d
    const/16 v17, 0x61

    move/from16 v0, v17

    if-lt v4, v0, :cond_b

    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v4, v0, :cond_b

    goto/16 :goto_3

    :cond_e
    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v3, v0, :cond_f

    add-int/lit8 v17, v3, -0x41

    add-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    int-to-byte v3, v0

    goto/16 :goto_4

    :cond_f
    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v3, v0, :cond_6

    add-int/lit8 v17, v3, -0x61

    add-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    int-to-byte v3, v0

    goto/16 :goto_4

    :cond_10
    const/16 v17, 0x46

    move/from16 v0, v17

    if-gt v4, v0, :cond_11

    add-int/lit8 v17, v4, -0x41

    add-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    int-to-byte v4, v0

    goto/16 :goto_5

    :cond_11
    const/16 v17, 0x66

    move/from16 v0, v17

    if-gt v4, v0, :cond_7

    add-int/lit8 v17, v4, -0x61

    add-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    int-to-byte v4, v0

    goto/16 :goto_5

    :cond_12
    add-int/lit8 v11, v12, 0x1

    aput-byte v2, v13, v12

    goto/16 :goto_2

    :goto_6
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_13

    add-int/lit8 v12, v11, 0x1

    add-int/lit8 v9, v8, 0x1

    aget-byte v17, v10, v8

    aput-byte v17, v13, v11

    move v11, v12

    move v8, v9

    goto :goto_6

    :cond_13
    const/4 v14, 0x0

    if-nez p1, :cond_15

    const-string/jumbo p1, "UTF-8"

    :cond_14
    :goto_7
    :try_start_1
    new-instance v15, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v15, v13, v0, v11, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v14, v15

    :goto_8
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    return-object v17

    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string/jumbo p1, "UTF-8"
    :try_end_2
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v6

    const-string/jumbo v17, "BluetoothMapUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Received unknown charset: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " - using UTF-8."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "UTF-8"

    goto :goto_7

    :catch_1
    move-exception v5

    :try_start_3
    new-instance v15, Ljava/lang/String;

    const-string/jumbo v17, "UTF-8"

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v15, v13, v0, v11, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v14, v15

    goto :goto_8

    :catch_2
    move-exception v7

    goto :goto_8

    :catch_3
    move-exception v5

    goto/16 :goto_0

    :cond_16
    move v11, v12

    goto :goto_6
.end method

.method public static stripEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-string/jumbo v9, "=?"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "?="

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapUtils;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Matching:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\nCharset: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\nEncoding : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\nText: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "Q"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StripEncoding: Quoted Printable string : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->quotedPrintableToUtf8(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v9, "B"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :try_start_0
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StripEncoding: base64 string : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StripEncoding: decoded string : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object p0

    move-object v7, v8

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :goto_1
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stripEncoding: string not encoded as base64: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :goto_2
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stripEncoding: Unsupported charset: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v9, "BluetoothMapUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stripEncoding: Hit unknown encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    return-object p0

    :catch_2
    move-exception v1

    move-object v7, v8

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v7, v8

    goto :goto_1
.end method

.method public static stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string/jumbo v6, ""

    return-object v6

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    new-array v5, v6, [C

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x20

    if-lt v0, v6, :cond_2

    const v6, 0xd7ff

    if-gt v0, v6, :cond_2

    :cond_1
    add-int/lit8 v3, v4, 0x1

    aput-char v0, v5, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_0

    :cond_2
    const v6, 0xe000

    if-lt v0, v6, :cond_3

    const v6, 0xfffd

    if-le v0, v6, :cond_1

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_5

    return-object p0

    :cond_5
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v6
.end method

.method public static truncateUtf8StringToBytearray(Ljava/lang/String;I)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v3, v2

    if-le v3, p1, :cond_0

    add-int/lit8 v3, p1, -0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, p1, -0x2

    :goto_0
    if-ltz v1, :cond_0

    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xc0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    aput-byte v7, v2, v1

    :cond_0
    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BluetoothMapUtils"

    const-string/jumbo v4, "truncateUtf8StringToBytearray: getBytes exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    aput-byte v7, v2, v3

    goto :goto_1
.end method
