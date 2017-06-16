.class public Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
.super Ljava/lang/Object;
.source "BluetoothMapMessageListingElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapMessageListingElement"

.field private static final V:Z


# instance fields
.field private mAttachmentMimeTypes:Ljava/lang/String;

.field private mAttachmentSize:I

.field private mCpHandle:J

.field private mCursorIndex:I

.field private mDateTime:J

.field private mDeliveryStatus:Ljava/lang/String;

.field private mFolderType:Ljava/lang/String;

.field private mMsgTypeAppParamSet:Z

.field private mPriority:Ljava/lang/String;

.field private mProtect:Ljava/lang/String;

.field private mRead:Z

.field private mReceptionStatus:Ljava/lang/String;

.field private mRecipientAddressing:Ljava/lang/String;

.field private mRecipientName:Ljava/lang/String;

.field private mReplytoAddressing:Ljava/lang/String;

.field private mReportRead:Z

.field private mSenderAddressing:Ljava/lang/String;

.field private mSenderName:Ljava/lang/String;

.field private mSent:Ljava/lang/String;

.field private mSize:I

.field private mSubject:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mThreadId:Ljava/lang/String;

.field private mThreadName:Ljava/lang/String;

.field private mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mMsgTypeAppParamSet:Z

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)I

    move-result v0

    return v0
.end method

.method public encode(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x100

    const/4 v8, -0x1

    const/4 v7, 0x0

    const-string/jumbo v3, "msg"

    invoke-interface {p1, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "handle"

    iget-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v4, v5, v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v7, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/android/bluetooth/util/Interop;->matchByAddress(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "[\\P{ASCII}&\"><]"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "---"

    :cond_0
    const-string/jumbo v3, "subject"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v7, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const-string/jumbo v2, "datetime"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getDateTimeString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "sender_name"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "sender_addressing"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "replyto_addressing"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string/jumbo v2, "recipient_name"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string/jumbo v2, "recipient_addressing"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mMsgTypeAppParamSet:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContent;->getPhoneType()I

    move-result v0

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v2, v3, :cond_b

    :cond_9
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->V:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "BluetoothMapMessageListingElement"

    const-string/jumbo v3, "encode :: Message type is RCS"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    :cond_b
    :goto_0
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    if-eq v2, v8, :cond_d

    const-string/jumbo v2, "size"

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    if-eqz v2, :cond_e

    const-string/jumbo v2, "text"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    if-eqz v2, :cond_f

    const-string/jumbo v2, "reception_status"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    if-eqz v2, :cond_10

    const-string/jumbo v2, "delivery_status"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    if-eq v2, v8, :cond_11

    const-string/jumbo v2, "attachment_size"

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    if-eqz v2, :cond_12

    const-string/jumbo v2, "attachment_mime_types"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    if-eqz v2, :cond_13

    const-string/jumbo v2, "priority"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    if-eqz v2, :cond_14

    const-string/jumbo v2, "read"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRead()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_14
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    if-eqz v2, :cond_15

    const-string/jumbo v2, "sent"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_15
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    if-eqz v2, :cond_16

    const-string/jumbo v2, "protected"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_16
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    if-eqz v2, :cond_17

    if-eqz p2, :cond_17

    const-string/jumbo v2, "conversation_id"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_17
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    if-eqz v2, :cond_18

    if-eqz p2, :cond_18

    const-string/jumbo v2, "conversation_name"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_18
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    if-eqz v2, :cond_19

    const-string/jumbo v2, "folder_type"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    invoke-interface {p1, v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_19
    const-string/jumbo v2, "msg"

    invoke-interface {p1, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :cond_1a
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto/16 :goto_0
.end method

.method public getAttachmentMimeTypes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachmentSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    return v0
.end method

.method public getCursorIndex()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    return v0
.end method

.method public getDateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    return-wide v0
.end method

.method public getDateTimeString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDeliveryStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    return-wide v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    return-object v0
.end method

.method public getProtect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "yes"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "no"

    goto :goto_0
.end method

.method public getReadBool()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    return v0
.end method

.method public getReceptionStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientAddressing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyToAddressing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public setAttachmentMimeTypes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentMimeTypes:Ljava/lang/String;

    return-void
.end method

.method public setAttachmentSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    return-void
.end method

.method public setCursorIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    return-void
.end method

.method public setDateTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    return-void
.end method

.method public setDeliveryStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDeliveryStatus:Ljava/lang/String;

    return-void
.end method

.method public setFolderType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mFolderType:Ljava/lang/String;

    return-void
.end method

.method public setHandle(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    return-void
.end method

.method public setProtect(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    return-void
.end method

.method public setRead(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    return-void
.end method

.method public setReceptionStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    return-void
.end method

.method public setRecipientAddressing(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    :cond_2
    const-string/jumbo v0, "11"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRecipientName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    return-void
.end method

.method public setReplytoAddressing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    return-void
.end method

.method public setSenderAddressing(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    :cond_2
    const-string/jumbo v0, "11"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    return-void
.end method

.method public setSent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    return-void
.end method

.method public setThreadId(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapConvoHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadName:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mMsgTypeAppParamSet:Z

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-void
.end method
