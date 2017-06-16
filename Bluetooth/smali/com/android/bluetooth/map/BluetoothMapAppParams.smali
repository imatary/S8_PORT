.class public Lcom/android/bluetooth/map/BluetoothMapAppParams;
.super Ljava/lang/Object;
.source "BluetoothMapAppParams.java"


# static fields
.field private static final ATTACHMENT:I = 0xa

.field private static final ATTACHMENT_LEN:I = 0x1

.field private static final CHARSET:I = 0x14

.field private static final CHARSET_LEN:I = 0x1

.field public static final CHARSET_NATIVE:I = 0x0

.field public static final CHARSET_UTF8:I = 0x1

.field private static final CHAT_STATE:I = 0x1f

.field private static final CHAT_STATE_CONVO_ID:I = 0x24

.field private static final CHAT_STATE_CONVO_ID_LEN:I = 0x10

.field private static final CHAT_STATE_LEN:I = 0x1

.field private static final CONVO_LISTING_SIZE:I = 0x21

.field private static final CONVO_LISTING_SIZE_LEN:I = 0x2

.field private static final CONVO_LIST_VER_COUNTER:I = 0x1b

.field private static final CONVO_LIST_VER_COUNTER_LEN:I = 0x10

.field private static final CONVO_PARAMETER_MASK:I = 0x28

.field private static final CONVO_PARAMETER_MASK_LEN:I = 0x4

.field private static final DATABASE_INDETIFIER:I = 0x1a

.field private static final DATABASE_INDETIFIER_LEN:I = 0x10

.field private static final FILTER_CONVO_ID:I = 0x20

.field private static final FILTER_CONVO_ID_LEN:I = 0x20

.field private static final FILTER_MESSAGE_HANDLE:I = 0x26

.field private static final FILTER_MESSAGE_HANDLE_LEN:I = 0x10

.field private static final FILTER_MESSAGE_TYPE:I = 0x3

.field private static final FILTER_MESSAGE_TYPE_LEN:I = 0x1

.field public static final FILTER_MSG_TYPE_MASK:I = 0x1f

.field public static final FILTER_NO_EMAIL:I = 0x4

.field public static final FILTER_NO_IM:I = 0x10

.field public static final FILTER_NO_MMS:I = 0x8

.field public static final FILTER_NO_SMS_CDMA:I = 0x2

.field public static final FILTER_NO_SMS_GSM:I = 0x1

.field private static final FILTER_ORIGINATOR:I = 0x8

.field private static final FILTER_PERIOD_BEGIN:I = 0x4

.field private static final FILTER_PERIOD_END:I = 0x5

.field private static final FILTER_PRESENCE:I = 0x22

.field private static final FILTER_PRESENCE_LEN:I = 0x1

.field private static final FILTER_PRIORITY:I = 0x9

.field private static final FILTER_PRIORITY_LEN:I = 0x1

.field private static final FILTER_READ_STATUS:I = 0x6

.field private static final FILTER_READ_STATUS_LEN:I = 0x1

.field private static final FILTER_RECIPIENT:I = 0x7

.field private static final FILTER_UID_PRESENT:I = 0x23

.field private static final FILTER_UID_PRESENT_LEN:I = 0x1

.field private static final FOLDER_LISTING_SIZE:I = 0x11

.field private static final FOLDER_LISTING_SIZE_LEN:I = 0x2

.field private static final FOLDER_VER_COUNTER:I = 0x25

.field private static final FOLDER_VER_COUNTER_LEN:I = 0x10

.field private static final FRACTION_DELIVER:I = 0x16

.field public static final FRACTION_DELIVER_LAST:I = 0x1

.field private static final FRACTION_DELIVER_LEN:I = 0x1

.field public static final FRACTION_DELIVER_MORE:I = 0x0

.field private static final FRACTION_REQUEST:I = 0x15

.field public static final FRACTION_REQUEST_FIRST:I = 0x0

.field private static final FRACTION_REQUEST_LEN:I = 0x1

.field public static final FRACTION_REQUEST_NEXT:I = 0x1

.field public static final INVALID_VALUE_PARAMETER:I = -0x1

.field private static final LAST_ACTIVITY:I = 0x1e

.field private static final MAS_INSTANCE_ID:I = 0xf

.field private static final MAS_INSTANCE_ID_LEN:I = 0x1

.field private static final MAX_LIST_COUNT:I = 0x1

.field private static final MAX_LIST_COUNT_LEN:I = 0x2

.field private static final MESSAGE_LISTING_SIZE:I = 0x12

.field private static final MESSAGE_LISTING_SIZE_LEN:I = 0x2

.field private static final MSE_TIME:I = 0x19

.field private static final NEW_MESSAGE:I = 0xd

.field private static final NEW_MESSAGE_LEN:I = 0x1

.field private static final NOTIFICATION_FILTER:I = 0x27

.field private static final NOTIFICATION_FILTER_LEN:I = 0x4

.field private static final NOTIFICATION_STATUS:I = 0xe

.field private static final NOTIFICATION_STATUS_LEN:I = 0x1

.field public static final NOTIFICATION_STATUS_NO:I = 0x0

.field public static final NOTIFICATION_STATUS_YES:I = 0x1

.field private static final PARAMETER_MASK:I = 0x10

.field private static final PARAMETER_MASK_LEN:I = 0x4

.field private static final PRESENCE_AVAILABLE:I = 0x1c

.field private static final PRESENCE_AVAILABLE_LEN:I = 0x1

.field private static final PRESENCE_TEXT:I = 0x1d

.field private static final RETRY:I = 0xc

.field private static final RETRY_LEN:I = 0x1

.field private static final START_OFFSET:I = 0x2

.field private static final START_OFFSET_LEN:I = 0x2

.field private static final STATUS_INDICATOR:I = 0x17

.field public static final STATUS_INDICATOR_DELETED:I = 0x1

.field private static final STATUS_INDICATOR_LEN:I = 0x1

.field public static final STATUS_INDICATOR_READ:I = 0x0

.field private static final STATUS_VALUE:I = 0x18

.field private static final STATUS_VALUE_LEN:I = 0x1

.field public static final STATUS_VALUE_NO:I = 0x0

.field public static final STATUS_VALUE_YES:I = 0x1

.field private static final SUBJECT_LENGTH:I = 0x13

.field private static final SUBJECT_LENGTH_LEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAppParams"

.field private static final TRANSPARENT:I = 0xb

.field private static final TRANSPARENT_LEN:I = 0x1


# instance fields
.field private mAttachment:I

.field private mCharset:I

.field private mChatState:I

.field private mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

.field private mConvoListingSize:I

.field private mConvoListingVerCounterHigh:J

.field private mConvoListingVerCounterLow:J

.field private mConvoParameterMask:J

.field private mDatabaseIdentifierHigh:J

.field private mDatabaseIdentifierLow:J

.field private mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

.field private mFilterMessageType:I

.field private mFilterMsgHandle:J

.field private mFilterOriginator:Ljava/lang/String;

.field private mFilterPeriodBegin:J

.field private mFilterPeriodEnd:J

.field private mFilterPresence:I

.field private mFilterPriority:I

.field private mFilterReadStatus:I

.field private mFilterRecipient:Ljava/lang/String;

.field private mFilterUidPresent:I

.field private mFolderListingSize:I

.field private mFolderVerCounterHigh:J

.field private mFolderVerCounterLow:J

.field private mFractionDeliver:I

.field private mFractionRequest:I

.field private mLastActivity:J

.field private mMasInstanceId:I

.field private mMaxListCount:I

.field private mMessageListingSize:I

.field private mMseTime:J

.field private mNewMessage:I

.field private mNotificationFilter:J

.field private mNotificationStatus:I

.field private mParameterMask:J

.field private mPresenceAvailability:I

.field private mPresenceStatus:Ljava/lang/String;

.field private mRetry:I

.field private mStartOffset:I

.field private mStatusIndicator:I

.field private mStatusValue:I

.field private mSubjectLength:I

.field private mTransparent:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->ParseParams([B)V

    return-void
.end method

.method private ParseParams([B)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v13, 0x4

    const/16 v12, 0x10

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_26

    add-int/lit8 v2, v1, 0x1

    aget-byte v5, p1, v1

    and-int/lit16 v3, v5, 0xff

    add-int/lit8 v1, v2, 0x1

    aget-byte v5, p1, v2

    and-int/lit16 v4, v5, 0xff

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown TagId received ( 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "), skipping..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :pswitch_0
    add-int/2addr v1, v4

    goto :goto_0

    :pswitch_1
    if-eq v4, v11, :cond_0

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MAX_LIST_COUNT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    goto :goto_1

    :pswitch_2
    if-eq v4, v11, :cond_1

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "START_OFFSET: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    goto :goto_1

    :pswitch_3
    if-eq v4, v10, :cond_2

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_MESSAGE_TYPE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1f

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    goto/16 :goto_1

    :pswitch_4
    if-eqz v4, :cond_3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodBegin(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_PERIOD_BEGIN: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected to be more than 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_5
    if-eqz v4, :cond_4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodEnd(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_PERIOD_END: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected to be more than 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_6
    if-eq v4, v10, :cond_5

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_READ_STATUS: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterReadStatus(I)V

    goto/16 :goto_1

    :pswitch_7
    if-eqz v4, :cond_6

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterRecipient(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_RECIPIENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected to be more than 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_8
    if-eqz v4, :cond_7

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterOriginator(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_ORIGINATOR: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected to be more than 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_9
    if-eq v4, v10, :cond_8

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_PRIORITY: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPriority(I)V

    goto/16 :goto_1

    :pswitch_a
    if-eq v4, v10, :cond_9

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ATTACHMENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setAttachment(I)V

    goto/16 :goto_1

    :pswitch_b
    if-eq v4, v10, :cond_a

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TRANSPARENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setTransparent(I)V

    goto/16 :goto_1

    :pswitch_c
    if-eq v4, v10, :cond_b

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RETRY: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setRetry(I)V

    goto/16 :goto_1

    :pswitch_d
    if-eq v4, v10, :cond_c

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NEW_MESSAGE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    goto/16 :goto_1

    :pswitch_e
    if-eq v4, v10, :cond_d

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NOTIFICATION_STATUS: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNotificationStatus(I)V

    goto/16 :goto_1

    :pswitch_f
    if-eq v4, v13, :cond_e

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NOTIFICATION_FILTER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNotificationFilter(J)V

    goto/16 :goto_1

    :pswitch_10
    if-eq v4, v10, :cond_f

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MAS_INSTANCE_ID: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_f
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMasInstanceId(I)V

    goto/16 :goto_1

    :pswitch_11
    if-eq v4, v13, :cond_10

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PARAMETER_MASK: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setParameterMask(J)V

    goto/16 :goto_1

    :pswitch_12
    if-eq v4, v11, :cond_11

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FOLDER_LISTING_SIZE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderListingSize(I)V

    goto/16 :goto_1

    :pswitch_13
    if-eq v4, v11, :cond_12

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MESSAGE_LISTING_SIZE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    goto/16 :goto_1

    :pswitch_14
    if-eq v4, v10, :cond_13

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SUBJECT_LENGTH: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setSubjectLength(I)V

    goto/16 :goto_1

    :pswitch_15
    if-eq v4, v10, :cond_14

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CHARSET: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_14
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setCharset(I)V

    goto/16 :goto_1

    :pswitch_16
    if-eq v4, v10, :cond_15

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FRACTION_REQUEST: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_15
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionRequest(I)V

    goto/16 :goto_1

    :pswitch_17
    if-eq v4, v10, :cond_16

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FRACTION_DELIVER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_16
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionDeliver(I)V

    goto/16 :goto_1

    :pswitch_18
    if-eq v4, v10, :cond_17

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "STATUS_INDICATOR: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_17
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStatusIndicator(I)V

    goto/16 :goto_1

    :pswitch_19
    if-eq v4, v10, :cond_18

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "STATUS_VALUER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_18
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStatusValue(I)V

    goto/16 :goto_1

    :pswitch_1a
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1b
    if-eq v4, v12, :cond_19

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DATABASE_IDENTIFIER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_19
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    add-int/lit8 v5, v1, 0x8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setDatabaseIdentifier(JJ)V

    goto/16 :goto_1

    :pswitch_1c
    if-eq v4, v12, :cond_1a

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CONVO_LIST_VER_COUNTER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    add-int/lit8 v5, v1, 0x8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingVerCounter(JJ)V

    goto/16 :goto_1

    :pswitch_1d
    if-eq v4, v10, :cond_1b

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PRESENCE_AVAILABLE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1b
    aget-byte v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setPresenceAvailability(I)V

    goto/16 :goto_1

    :pswitch_1e
    if-eqz v4, :cond_1c

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setPresenceStatus(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PRESENCE_STATUS: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected to be more than 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1f
    if-eqz v4, :cond_1d

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setLastActivity(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LAST_ACTIVITY: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected to be more than 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_20
    if-eq v4, v10, :cond_1e

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CHAT_STATE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1e
    aget-byte v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setChatState(I)V

    goto/16 :goto_1

    :pswitch_21
    if-eqz v4, :cond_1f

    const/16 v5, 0x20

    if-gt v4, v5, :cond_1f

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterConvoId(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1f
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_CONVO_ID: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_22
    if-eq v4, v11, :cond_20

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LISTING_SIZE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_20
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoListingSize(I)V

    goto/16 :goto_1

    :pswitch_23
    if-eq v4, v10, :cond_21

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_PRESENCE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_21
    aget-byte v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPresence(I)V

    goto/16 :goto_1

    :pswitch_24
    if-eq v4, v10, :cond_22

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_UID_PRESENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_22
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterUidPresent(I)V

    goto/16 :goto_1

    :pswitch_25
    if-eq v4, v12, :cond_23

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CHAT_STATE_CONVO_ID: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_23
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    add-int/lit8 v5, v1, 0x8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setChatStateConvoId(JJ)V

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CHAT_STATE_CONVO_ID: convo id MSB="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", LSB(+8)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x8

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_26
    if-eqz v4, :cond_24

    if-gt v4, v12, :cond_24

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMsgHandle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_24
    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILTER_MESSAGE_HANDLE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_27
    if-eq v4, v13, :cond_25

    const-string/jumbo v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CONVO_PARAMETER_MASK: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_25
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoParameterMask(J)V

    goto/16 :goto_1

    :cond_26
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_0
        :pswitch_26
        :pswitch_f
        :pswitch_27
    .end packed-switch
.end method

.method private getParamMaxLength()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    const/16 v3, 0x14

    const/4 v2, 0x0

    const/16 v0, 0x4c

    add-int/lit8 v0, v0, 0x61

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0xad

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivity()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    :goto_3
    add-int/2addr v0, v2

    return v0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3
.end method


# virtual methods
.method public EncodeParams()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v8, 0x2

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParamMaxLength()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    if-eq v2, v4, :cond_5

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_6
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_7
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v2

    if-eq v2, v4, :cond_8

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_8
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v2

    if-eq v2, v4, :cond_9

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_9
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v2

    if-eq v2, v4, :cond_a

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_a
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v2

    if-eq v2, v4, :cond_b

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_b
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNewMessage()I

    move-result v2

    if-eq v2, v4, :cond_c

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNewMessage()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_c
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v2

    if-eq v2, v4, :cond_d

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_d
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_e

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationFilter()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_e
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v2

    if-eq v2, v4, :cond_f

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_f
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_10
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderListingSize()I

    move-result v2

    if-eq v2, v4, :cond_11

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderListingSize()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_11
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMessageListingSize()I

    move-result v2

    if-eq v2, v4, :cond_12

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMessageListingSize()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_12
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v2

    if-eq v2, v4, :cond_13

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_13
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    if-eq v2, v4, :cond_14

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_14
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v2

    if-eq v2, v4, :cond_15

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_15
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionDeliver()I

    move-result v2

    if-eq v2, v4, :cond_16

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionDeliver()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_16
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v2

    if-eq v2, v4, :cond_17

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_17
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v2

    if-eq v2, v4, :cond_18

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_18
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_19

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTimeString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTimeString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_19
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getDatabaseIdentifier()[B

    move-result-object v2

    if-eqz v2, :cond_1a

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getDatabaseIdentifier()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1a
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingVerCounter()[B

    move-result-object v2

    if-eqz v2, :cond_1b

    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingVerCounter()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1b
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v2

    if-eq v2, v4, :cond_1c

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceAvailability()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_1c
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getPresenceStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1d
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivity()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1e

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getLastActivityString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1e
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v2

    if-eq v2, v4, :cond_1f

    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatState()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_1f
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    if-eqz v2, :cond_20

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    :cond_20
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingSize()I

    move-result v2

    if-eq v2, v4, :cond_21

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoListingSize()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_21
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPresence()I

    move-result v2

    if-eq v2, v4, :cond_22

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPresence()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_22
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterUidPresent()I

    move-result v2

    if-eq v2, v4, :cond_23

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterUidPresent()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_23
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    if-eqz v2, :cond_24

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    :cond_24
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderVerCounter()[B

    move-result-object v2

    if-eqz v2, :cond_25

    const/16 v2, 0x25

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderVerCounter()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_25
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_26

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandle()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    :cond_26
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_27

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public getAttachment()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    return v0
.end method

.method public getCharset()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    return v0
.end method

.method public getChatState()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    return v0
.end method

.method public getChatStateConvoId()Lcom/android/bluetooth/SignedLongLong;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    return-object v0
.end method

.method public getChatStateConvoIdByteArray()[B
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getChatStateConvoIdString()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getChatStateConvoIdByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :cond_0
    return-object v1
.end method

.method public getConvoListingSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    return v0
.end method

.method public getConvoListingVerCounter()[B
    .locals 6

    const-wide/16 v4, -0x1

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getConvoParameterMask()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    return-wide v0
.end method

.method public getDatabaseIdentifier()[B
    .locals 6

    const-wide/16 v4, -0x1

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    return-object v0
.end method

.method public getFilterConvoIdString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFilterLastActivityBegin()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    return-wide v0
.end method

.method public getFilterLastActivityBeginString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterLastActivityEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    return-wide v0
.end method

.method public getFilterLastActivityEndString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterMessageType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    return v0
.end method

.method public getFilterMsgHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    return-wide v0
.end method

.method public getFilterMsgHandleString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFilterOriginator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterPeriodBegin()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    return-wide v0
.end method

.method public getFilterPeriodBeginString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterPeriodEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    return-wide v0
.end method

.method public getFilterPeriodEndString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterPresence()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    return v0
.end method

.method public getFilterPriority()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    return v0
.end method

.method public getFilterReadStatus()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    return v0
.end method

.method public getFilterRecipient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterUidPresent()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    return v0
.end method

.method public getFolderListingSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    return v0
.end method

.method public getFolderVerCounter()[B
    .locals 6

    const-wide/16 v4, -0x1

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFractionDeliver()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    return v0
.end method

.method public getFractionRequest()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    return v0
.end method

.method public getLastActivity()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    return-wide v0
.end method

.method public getLastActivityString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMasInstanceId()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    return v0
.end method

.method public getMaxListCount()I
    .locals 2

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    sget v1, Lcom/android/bluetooth/map/BluetoothMapUtils;->LIMITED_MAX_LIST_COUNT:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->LIMITED_MAX_LIST_COUNT:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    return v0
.end method

.method public getMessageListingSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    return v0
.end method

.method public getMseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    return-wide v0
.end method

.method public getMseTimeString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNewMessage()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    return v0
.end method

.method public getNotificationFilter()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    return-wide v0
.end method

.method public getNotificationStatus()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    return v0
.end method

.method public getParameterMask()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    return-wide v0
.end method

.method public getPresenceAvailability()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    return v0
.end method

.method public getPresenceStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    return v0
.end method

.method public getStartOffset()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    return v0
.end method

.method public getStatusIndicator()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    return v0
.end method

.method public getStatusValue()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    return v0
.end method

.method public getSubjectLength()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    return v0
.end method

.method public getTransparent()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    return v0
.end method

.method public setAttachment(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    return-void
.end method

.method public setCharset(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", valid range is 0x0000 to 0x0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    return-void
.end method

.method public setChatState(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatState:I

    return-void
.end method

.method public setChatStateConvoId(JJ)V
    .locals 1

    new-instance v0, Lcom/android/bluetooth/SignedLongLong;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mChatStateConvoId:Lcom/android/bluetooth/SignedLongLong;

    return-void
.end method

.method public setConvoListingSize(I)V
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingSize:I

    return-void
.end method

.method public setConvoListingVerCounter(JJ)V
    .locals 1

    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterHigh:J

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoListingVerCounterLow:J

    return-void
.end method

.method public setConvoParameterMask(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFFFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mConvoParameterMask:J

    return-void
.end method

.method public setDatabaseIdentifier(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierHigh:J

    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mDatabaseIdentifierLow:J

    return-void
.end method

.method public setFilterConvoId(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/SignedLongLong;->fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterConvoId:Lcom/android/bluetooth/SignedLongLong;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothMapAppParams"

    const-string/jumbo v2, "Error creating long from id string"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFilterLastActivityBegin(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    return-void
.end method

.method public setFilterLastActivityBegin(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    return-void
.end method

.method public setFilterLastActivityEnd(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    return-void
.end method

.method public setFilterLastActivityEnd(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    return-void
.end method

.method public setFilterMessageType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x001F"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    return-void
.end method

.method public setFilterMsgHandle(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongFromString(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMsgHandle:J
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothMapAppParams"

    const-string/jumbo v2, "Error creating long from handle string"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFilterOriginator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    return-void
.end method

.method public setFilterPeriodBegin(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    return-void
.end method

.method public setFilterPeriodBegin(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    return-void
.end method

.method public setFilterPeriodEnd(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    return-void
.end method

.method public setFilterPeriodEnd(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    return-void
.end method

.method public setFilterPresence(I)V
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPresence:I

    return-void
.end method

.method public setFilterPriority(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    return-void
.end method

.method public setFilterReadStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    return-void
.end method

.method public setFilterRecipient(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    return-void
.end method

.method public setFilterUidPresent(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterUidPresent:I

    return-void
.end method

.method public setFolderListingSize(I)V
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    return-void
.end method

.method public setFolderVerCounter(JJ)V
    .locals 1

    iput-wide p3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterHigh:J

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderVerCounterLow:J

    return-void
.end method

.method public setFractionDeliver(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    return-void
.end method

.method public setFractionRequest(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    return-void
.end method

.method public setLastActivity(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    return-void
.end method

.method public setLastActivity(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mLastActivity:J

    return-void
.end method

.method public setMasInstanceId(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    return-void
.end method

.method public setMaxListCount(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    return-void
.end method

.method public setMessageListingSize(I)V
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    return-void
.end method

.method public setMseTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    return-void
.end method

.method public setMseTime(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    return-void
.end method

.method public setNewMessage(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    return-void
.end method

.method public setNotificationFilter(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFFFFFFL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationFilter:J

    return-void
.end method

.method public setNotificationStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    return-void
.end method

.method public setParameterMask(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFFFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    return-void
.end method

.method public setPresenceAvailability(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceAvailability:I

    return-void
.end method

.method public setPresenceStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mPresenceStatus:Ljava/lang/String;

    return-void
.end method

.method public setRetry(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    return-void
.end method

.method public setStartOffset(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    return-void
.end method

.method public setStatusIndicator(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    return-void
.end method

.method public setStatusValue(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    return-void
.end method

.method public setSubjectLength(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    return-void
.end method

.method public setTransparent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    return-void
.end method
