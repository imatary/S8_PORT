.class public final Lcom/android/bluetooth/mapapi/BluetoothMapContract;
.super Ljava/lang/Object;
.source "BluetoothMapContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$AccountColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$BodyColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ChatState;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ChatStatusColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ConversationColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$ConvoContactColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$EmailMessageColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$FolderColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$MessageColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$MessagePartColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$PresenceColumns;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$PresenceState;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$RcsBoxType;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$RcsChat;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$RcsCommonColumn;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$RcsFt;,
        Lcom/android/bluetooth/mapapi/BluetoothMapContract$RcsMessageType;
    }
.end annotation


# static fields
.field public static final BT_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final BT_BODY_PROJECTION:[Ljava/lang/String;

.field public static final BT_CHATSTATUS_PROJECTION:[Ljava/lang/String;

.field public static final BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

.field public static final BT_CONTACT_PROJECTION:[Ljava/lang/String;

.field public static final BT_CONVERSATION_PROJECTION:[Ljava/lang/String;

.field public static final BT_FOLDER_PROJECTION:[Ljava/lang/String;

.field public static final BT_IM_ACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final BT_MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final BT_PRESENCE_PROJECTION:[Ljava/lang/String;

.field public static final DELIVERY_STATE_DELIVERED:Ljava/lang/String; = "delivered"

.field public static final DELIVERY_STATE_SENT:Ljava/lang/String; = "sent"

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "AccountId"

.field public static final EXTRA_BLUETOOTH_STATE:Ljava/lang/String; = "BluetoothState"

.field public static final EXTRA_CHAT_STATE:Ljava/lang/String; = "ChatState"

.field public static final EXTRA_CONVERSATION_ID:Ljava/lang/String; = "ConversationId"

.field public static final EXTRA_LAST_ACTIVE:Ljava/lang/String; = "LastActive"

.field public static final EXTRA_PRESENCE_STATE:Ljava/lang/String; = "PresenceState"

.field public static final EXTRA_PRESENCE_STATUS:Ljava/lang/String; = "PresenceStatus"

.field public static final EXTRA_SEND_MESSAGE_DELIVERY_INTENT:Ljava/lang/String; = "SendMessageIntent"

.field public static final EXTRA_SEND_MESSAGE_ID:Ljava/lang/String; = "SendMessageId"

.field public static final EXTRA_UPDATE_ACCOUNT_ID:Ljava/lang/String; = "UpdateAccountId"

.field public static final EXTRA_UPDATE_FOLDER_ID:Ljava/lang/String; = "UpdateFolderId"

.field public static final FILE_MSG_DOWNLOAD:Ljava/lang/String; = "DOWNLOAD"

.field public static final FILE_MSG_DOWNLOAD_NO_ATTACHMENTS:Ljava/lang/String; = "DOWNLOAD_NO_ATTACHMENTS"

.field public static final FILE_MSG_NO_ATTACHMENTS:Ljava/lang/String; = "NO_ATTACHMENTS"

.field public static final FILTER_ORIGINATOR_SUBSTRING:Ljava/lang/String; = "org_sub_str"

.field public static final FILTER_PERIOD_BEGIN:Ljava/lang/String; = "t_begin"

.field public static final FILTER_PERIOD_END:Ljava/lang/String; = "t_end"

.field public static final FILTER_READ_STATUS:Ljava/lang/String; = "read"

.field public static final FILTER_RECIPIENT_SUBSTRING:Ljava/lang/String; = "rec_sub_str"

.field public static final FILTER_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final FOLDER_ID_DELETED:J = 0x5L

.field public static final FOLDER_ID_DRAFT:J = 0x3L

.field public static final FOLDER_ID_INBOX:J = 0x1L

.field public static final FOLDER_ID_OTHER:J = 0x0L

.field public static final FOLDER_ID_OUTBOX:J = 0x4L

.field public static final FOLDER_ID_SENT:J = 0x2L

.field public static final FOLDER_NAME_DELETED:Ljava/lang/String; = "deleted"

.field public static final FOLDER_NAME_DRAFT:Ljava/lang/String; = "draft"

.field public static final FOLDER_NAME_INBOX:Ljava/lang/String; = "inbox"

.field public static final FOLDER_NAME_OTHER:Ljava/lang/String; = "other"

.field public static final FOLDER_NAME_OUTBOX:Ljava/lang/String; = "outbox"

.field public static final FOLDER_NAME_SENT:Ljava/lang/String; = "sent"

.field public static final FOLDER_NAME_SPAM:Ljava/lang/String; = "spam"

.field public static final METHOD_SEND_MESSAGE:Ljava/lang/String; = "SendMessage"

.field public static final METHOD_SET_BLUETOOTH_STATE:Ljava/lang/String; = "SetBtState"

.field public static final METHOD_SET_OWNER_STATUS:Ljava/lang/String; = "SetOwnerStatus"

.field public static final METHOD_UPDATE_FOLDER:Ljava/lang/String; = "UpdateFolder"

.field public static final PROVIDER_INTERFACE_EMAIL:Ljava/lang/String; = "android.bluetooth.action.BLUETOOTH_MAP_PROVIDER"

.field public static final PROVIDER_INTERFACE_IM:Ljava/lang/String; = "android.bluetooth.action.BLUETOOTH_MAP_IM_PROVIDER"

.field public static final RECEPTION_STATE_COMPLETE:Ljava/lang/String; = "complete"

.field public static final RECEPTION_STATE_FRACTIONED:Ljava/lang/String; = "fractioned"

.field public static final RECEPTION_STATE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final TABLE_ACCOUNT:Ljava/lang/String; = "account"

.field public static final TABLE_BODY:Ljava/lang/String; = "body"

.field public static final TABLE_CONVERSATION:Ljava/lang/String; = "Conversation"

.field public static final TABLE_CONVOCONTACT:Ljava/lang/String; = "ConvoContact"

.field public static final TABLE_FOLDER:Ljava/lang/String; = "mailbox"

.field public static final TABLE_MESSAGE:Ljava/lang/String; = "message"

.field public static final TABLE_MESSAGE_PART:Ljava/lang/String; = "part"

.field public static final TABLE_POLICY:Ljava/lang/String; = "policy"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v4

    const-string/jumbo v1, "subject"

    aput-object v1, v0, v5

    const-string/jumbo v1, "size"

    aput-object v1, v0, v6

    const-string/jumbo v1, "mailboxKey"

    aput-object v1, v0, v7

    const-string/jumbo v1, "flagRead"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "0"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "importance"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "flagAttachment"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "messageId"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "fromList"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "toList"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "ccList"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "bccList"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "replyToList"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "CASE flagLoaded WHEN 1 THEN \'complete\' WHEN 2 THEN \'fractioned\' ELSE \'notification\' END"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "threadId"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "timeStamp"

    aput-object v1, v0, v4

    const-string/jumbo v1, "subject"

    aput-object v1, v0, v5

    const-string/jumbo v1, "size"

    aput-object v1, v0, v6

    const-string/jumbo v1, "mailboxKey"

    aput-object v1, v0, v7

    const-string/jumbo v1, "flagRead"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "0"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "importance"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "flagAttachment"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "attachmentSize"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "attachment_mime_types"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "fromList"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "toList"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "CASE flagLoaded WHEN 1 THEN \'complete\' WHEN 2 THEN \'fractioned\' ELSE \'notification\' END"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "delivery_state"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "threadId"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "thread_name"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    const-string/jumbo v1, "isDefault"

    aput-object v1, v0, v5

    const-string/jumbo v1, "securityFlags"

    aput-object v1, v0, v6

    const-string/jumbo v1, "hostAuthKeyRecv"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    const-string/jumbo v1, "flag_expose"

    aput-object v1, v0, v5

    const-string/jumbo v1, "account_uci"

    aput-object v1, v0, v6

    const-string/jumbo v1, "account_uci_PREFIX"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_IM_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "CASE parentKey WHEN -1 THEN CASE type WHEN 0 THEN \'inbox\' WHEN 4 THEN \'outbox\' WHEN 5 THEN \'sent\' WHEN 6 THEN \'deleted\' WHEN 3 THEN \'draft\' ELSE displayName END ELSE displayName END"

    aput-object v1, v0, v4

    const-string/jumbo v1, "accountKey"

    aput-object v1, v0, v5

    const-string/jumbo v1, "serverId"

    aput-object v1, v0, v6

    const-string/jumbo v1, "parentKey"

    aput-object v1, v0, v7

    const-string/jumbo v1, "parentServerId"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_FOLDER_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "messageKey"

    aput-object v1, v0, v4

    const-string/jumbo v1, "htmlContent"

    aput-object v1, v0, v5

    const-string/jumbo v1, "textContent"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_BODY_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "thread_name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "read_status"

    aput-object v1, v0, v5

    const-string/jumbo v1, "last_thread_activity"

    aput-object v1, v0, v6

    const-string/jumbo v1, "version_counter"

    aput-object v1, v0, v7

    const-string/jumbo v1, "convo_summary"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "x_bt_uci"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "nickname"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "chat_state"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "last_active"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "x_bt_uid"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "presence_state"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "status_text"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "priority"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONVERSATION_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "x_bt_uci"

    aput-object v1, v0, v3

    const-string/jumbo v1, "convo_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "nickname"

    aput-object v1, v0, v6

    const-string/jumbo v1, "x_bt_uid"

    aput-object v1, v0, v7

    const-string/jumbo v1, "chat_state"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "last_active"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "presence_state"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "priority"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "status_text"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "last_online"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_CHATSTATE_PRESENCE_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "x_bt_uci"

    aput-object v1, v0, v3

    const-string/jumbo v1, "convo_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "x_bt_uid"

    aput-object v1, v0, v5

    const-string/jumbo v1, "name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "nickname"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "chat_state"

    aput-object v1, v0, v3

    const-string/jumbo v1, "last_active"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CHATSTATUS_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "presence_state"

    aput-object v1, v0, v3

    const-string/jumbo v1, "priority"

    aput-object v1, v0, v4

    const-string/jumbo v1, "status_text"

    aput-object v1, v0, v5

    const-string/jumbo v1, "last_online"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_PRESENCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAccountUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildAccountUriwithId(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildConversationUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "Conversation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildConvoContactsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ConvoContact"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildConvoContactsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ConvoContact"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildConvoContactsUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ConvoContact"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildFolderUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "mailbox"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildMessageUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildMessageUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildMessageUriWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
