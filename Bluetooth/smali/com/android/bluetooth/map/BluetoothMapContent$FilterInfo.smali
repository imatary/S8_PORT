.class Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
.super Ljava/lang/Object;
.source "BluetoothMapContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterInfo"
.end annotation


# static fields
.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_IM:I = 0x3

.field public static final TYPE_MMS:I = 0x1

.field public static final TYPE_RCS_CHAT:I = 0x4

.field public static final TYPE_RCS_FT:I = 0x5

.field public static final TYPE_SMS:I


# instance fields
.field public mContactColBtUid:I

.field public mContactColChatState:I

.field public mContactColContactUci:I

.field public mContactColLastActive:I

.field public mContactColName:I

.field public mContactColNickname:I

.field public mContactColPresenceState:I

.field public mContactColPresenceText:I

.field public mContactColPriority:I

.field public mConvoColConvoId:I

.field public mConvoColLastActivity:I

.field public mConvoColName:I

.field public mConvoColRead:I

.field public mConvoColSummary:I

.field public mConvoColVersionCounter:I

.field public mMessageColAccountId:I

.field public mMessageColAttachment:I

.field public mMessageColAttachmentMime:I

.field public mMessageColAttachmentSize:I

.field public mMessageColBccAddress:I

.field public mMessageColBody:I

.field public mMessageColCcAddress:I

.field public mMessageColDate:I

.field public mMessageColDelivery:I

.field public mMessageColFolder:I

.field public mMessageColFromAddress:I

.field public mMessageColId:I

.field public mMessageColPriority:I

.field public mMessageColProtected:I

.field public mMessageColRead:I

.field public mMessageColReception:I

.field public mMessageColReplyTo:I

.field public mMessageColSize:I

.field public mMessageColSubject:I

.field public mMessageColThreadId:I

.field public mMessageColThreadName:I

.field public mMessageColToAddress:I

.field public mMmsColAttachmentSize:I

.field public mMmsColDate:I

.field public mMmsColFolder:I

.field public mMmsColId:I

.field public mMmsColRead:I

.field public mMmsColSize:I

.field public mMmsColSubject:I

.field public mMmsColTextOnly:I

.field public mMmsColThreadId:I

.field mMsgType:I

.field mPhoneAlphaTag:Ljava/lang/String;

.field mPhoneNum:Ljava/lang/String;

.field mPhoneType:I

.field public mRcsChatColAddress:I

.field public mRcsChatColDate:I

.field public mRcsChatColFolder:I

.field public mRcsChatColId:I

.field public mRcsChatColRead:I

.field public mRcsChatColSubject:I

.field public mRcsChatColThreadId:I

.field public mRcsChatColType:I

.field public mRcsFtColAddress:I

.field public mRcsFtColDate:I

.field public mRcsFtColFolder:I

.field public mRcsFtColId:I

.field public mRcsFtColRead:I

.field public mRcsFtColSubject:I

.field public mRcsFtColThreadId:I

.field public mRcsFtColType:I

.field public mSmsColAddress:I

.field public mSmsColDate:I

.field public mSmsColFolder:I

.field public mSmsColId:I

.field public mSmsColRead:I

.field public mSmsColSubject:I

.field public mSmsColThreadId:I

.field public mSmsColType:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContent;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDate:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBody:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSubject:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColRead:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSize:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReplyTo:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAccountId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentSize:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentMime:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColPriority:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColProtected:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReception:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDelivery:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadName:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColRead:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColDate:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColThreadId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColRead:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColAttachmentSize:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSize:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColDate:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSubject:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColThreadId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColFolder:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColRead:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColSubject:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColAddress:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColDate:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColType:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColThreadId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColFolder:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColRead:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColSubject:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColAddress:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColDate:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColType:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColThreadId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColVersionCounter:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColBtUid:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColChatState:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColContactUci:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColNickname:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColLastActive:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColName:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceState:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceText:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPriority:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;)V

    return-void
.end method


# virtual methods
.method public setEmailImConvoColumns(Landroid/database/Cursor;)V
    .locals 1

    const-string/jumbo v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    const-string/jumbo v0, "last_thread_activity"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    const-string/jumbo v0, "thread_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    const-string/jumbo v0, "read_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    const-string/jumbo v0, "version_counter"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColVersionCounter:I

    const-string/jumbo v0, "convo_summary"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailImConvoContactColumns(Landroid/database/Cursor;)V

    return-void
.end method

.method public setEmailImConvoContactColumns(Landroid/database/Cursor;)V
    .locals 1

    const-string/jumbo v0, "x_bt_uid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColBtUid:I

    const-string/jumbo v0, "chat_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColChatState:I

    const-string/jumbo v0, "x_bt_uci"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColContactUci:I

    const-string/jumbo v0, "nickname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColNickname:I

    const-string/jumbo v0, "last_active"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColLastActive:I

    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColName:I

    const-string/jumbo v0, "presence_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceState:I

    const-string/jumbo v0, "status_text"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceText:I

    const-string/jumbo v0, "priority"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPriority:I

    return-void
.end method

.method public setEmailMessageColumns(Landroid/database/Cursor;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setMessageColumns(Landroid/database/Cursor;)V

    const-string/jumbo v0, "ccList"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    const-string/jumbo v0, "bccList"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    const-string/jumbo v0, "replyToList"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReplyTo:I

    return-void
.end method

.method public setImMessageColumns(Landroid/database/Cursor;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setMessageColumns(Landroid/database/Cursor;)V

    const-string/jumbo v0, "thread_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadName:I

    const-string/jumbo v0, "attachment_mime_types"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentMime:I

    const-string/jumbo v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBody:I

    return-void
.end method

.method public setMessageColumns(Landroid/database/Cursor;)V
    .locals 1

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColId:I

    const-string/jumbo v0, "timeStamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDate:I

    const-string/jumbo v0, "subject"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSubject:I

    const-string/jumbo v0, "mailboxKey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    const-string/jumbo v0, "flagRead"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColRead:I

    const-string/jumbo v0, "size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSize:I

    const-string/jumbo v0, "fromList"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    const-string/jumbo v0, "toList"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    const-string/jumbo v0, "flagAttachment"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    const-string/jumbo v0, "attachmentSize"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentSize:I

    const-string/jumbo v0, "importance"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColPriority:I

    const-string/jumbo v0, "0"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColProtected:I

    const-string/jumbo v0, "CASE flagLoaded WHEN 1 THEN \'complete\' WHEN 2 THEN \'fractioned\' ELSE \'notification\' END"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColReception:I

    const-string/jumbo v0, "delivery_state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDelivery:I

    const-string/jumbo v0, "threadId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadId:I

    return-void
.end method

.method public setMmsColumns(Landroid/database/Cursor;)V
    .locals 1

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    const-string/jumbo v0, "msg_box"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    const-string/jumbo v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColRead:I

    const-string/jumbo v0, "m_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColAttachmentSize:I

    const-string/jumbo v0, "text_only"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    const-string/jumbo v0, "m_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSize:I

    const-string/jumbo v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColDate:I

    const-string/jumbo v0, "sub"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSubject:I

    const-string/jumbo v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColThreadId:I

    return-void
.end method

.method public setRcsChatColumns(Landroid/database/Cursor;)V
    .locals 1

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColId:I

    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColFolder:I

    const-string/jumbo v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColRead:I

    const-string/jumbo v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColSubject:I

    const-string/jumbo v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColAddress:I

    const-string/jumbo v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColDate:I

    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColType:I

    const-string/jumbo v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsChatColThreadId:I

    return-void
.end method

.method public setRcsFtColumns(Landroid/database/Cursor;)V
    .locals 1

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColId:I

    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColFolder:I

    const-string/jumbo v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColRead:I

    const-string/jumbo v0, "file_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColSubject:I

    const-string/jumbo v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColAddress:I

    const-string/jumbo v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColDate:I

    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColType:I

    const-string/jumbo v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mRcsFtColThreadId:I

    return-void
.end method

.method public setSmsColumns(Landroid/database/Cursor;)V
    .locals 1

    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColId:I

    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    const-string/jumbo v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColRead:I

    const-string/jumbo v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    const-string/jumbo v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    const-string/jumbo v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColDate:I

    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    const-string/jumbo v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColThreadId:I

    return-void
.end method
