.class public Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
.super Ljava/lang/Object;
.source "BluetoothMapConvoContactElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTACT_ID_TYPE_EMAIL:J = 0x2L

.field public static final CONTACT_ID_TYPE_IM:J = 0x3L

.field public static final CONTACT_ID_TYPE_SMS_MMS:J = 0x1L

.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothMapConvoContactElement"

.field private static final V:Z = false

.field private static final XML_ATT_CHAT_STATE:Ljava/lang/String; = "chat_state"

.field private static final XML_ATT_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final XML_ATT_LAST_ACTIVITY:Ljava/lang/String; = "last_activity"

.field private static final XML_ATT_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATT_PRESENCE_AVAILABILITY:Ljava/lang/String; = "presence_availability"

.field private static final XML_ATT_PRESENCE_STATUS:Ljava/lang/String; = "presence_status"

.field private static final XML_ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final XML_ATT_UCI:Ljava/lang/String; = "x_bt_uci"

.field private static final XML_ATT_X_BT_UID:Ljava/lang/String; = "x_bt_uid"

.field protected static final XML_TAG_CONVOCONTACT:Ljava/lang/String; = "convocontact"


# instance fields
.field private mBtUid:Lcom/android/bluetooth/SignedLongLong;

.field private mChatState:I

.field private mDisplayName:Ljava/lang/String;

.field private mLastActivity:J

.field private mName:Ljava/lang/String;

.field private mPresenceAvailability:I

.field private mPresenceStatus:Ljava/lang/String;

.field private mPriority:I

.field private mUci:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;)V
    .locals 6

    const/4 v4, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    iput v4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    iput v4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    iput v4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    iput-wide p6, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    iput p8, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    iput p9, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    if-eqz p10, :cond_0

    :try_start_0
    invoke-static/range {p10 .. p10}, Lcom/android/bluetooth/SignedLongLong;->fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothMapConvoContactElement"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createFromMapContact(Lcom/android/bluetooth/map/MapContact;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    .locals 6

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>()V

    iput-object p1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    new-instance v1, Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/MapContact;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/MapContact;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v5, 0x1

    if-ge v2, v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "convocontact is not decorated with attributes"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct {v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_a

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "x_bt_uci"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object v1, v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v1, v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "display_name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v1, v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "chat_state"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setChatState(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "last_activity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setLastActivity(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "x_bt_uid"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1}, Lcom/android/bluetooth/SignedLongLong;->fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setBtUid(Lcom/android/bluetooth/SignedLongLong;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "presence_availability"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    goto :goto_1

    :cond_8
    const-string/jumbo v5, "presence_status"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceStatus(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string/jumbo v5, "priority"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPriority(I)V

    goto :goto_1

    :cond_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-object v4
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

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

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)I

    move-result v0

    return v0
.end method

.method public encode(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "convocontact"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "x_bt_uci"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "display_name"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    if-eq v0, v5, :cond_3

    const-string/jumbo v0, "chat_state"

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const-string/jumbo v0, "last_activity"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getLastActivityString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "x_bt_uid"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v1}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    if-eq v0, v5, :cond_6

    const-string/jumbo v0, "presence_availability"

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "presence_status"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    if-eq v0, v5, :cond_8

    const-string/jumbo v0, "priority"

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    const-string/jumbo v0, "convocontact"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    if-nez p1, :cond_1

    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v6

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    if-eq v1, v2, :cond_3

    return v6

    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v6

    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v6

    :cond_5
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    iget-wide v4, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    return v6

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    if-eqz v1, :cond_8

    return v6

    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v6

    :cond_8
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    if-eq v1, v2, :cond_9

    return v6

    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    if-eqz v1, :cond_b

    return v6

    :cond_a
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v6

    :cond_b
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    iget v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    if-eq v1, v2, :cond_c

    return v6

    :cond_c
    return v7
.end method

.method public getBtUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v0}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatState()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    return v0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActivityString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPresenceAvailability()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    return v0
.end method

.method public getPresenceStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    return v0
.end method

.method public setBtUid(Lcom/android/bluetooth/SignedLongLong;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mBtUid:Lcom/android/bluetooth/SignedLongLong;

    return-void
.end method

.method public setChatState(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    return-void
.end method

.method public setChatState(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mChatState:I

    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mUci:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setLastActivity(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

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

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mLastActivity:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPresenceAvailability(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceAvailability:I

    return-void
.end method

.method public setPresenceStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPresenceStatus:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->mPriority:I

    return-void
.end method
