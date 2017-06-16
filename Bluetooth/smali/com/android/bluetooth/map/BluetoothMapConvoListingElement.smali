.class public Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
.super Ljava/lang/Object;
.source "BluetoothMapConvoListingElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothMapConvoListingElement"

.field private static final V:Z

.field private static final XML_ATT_ID:Ljava/lang/String; = "id"

.field private static final XML_ATT_LAST_ACTIVITY:Ljava/lang/String; = "last_activity"

.field private static final XML_ATT_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATT_READ:Ljava/lang/String; = "readstatus"

.field private static final XML_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field private static final XML_ATT_VERSION_COUNTER:Ljava/lang/String; = "version_counter"

.field public static final XML_TAG_CONVERSATION:Ljava/lang/String; = "conversation"


# instance fields
.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation
.end field

.field private mCursorIndex:I

.field private mId:Lcom/android/bluetooth/SignedLongLong;

.field private mLastActivity:J

.field private mName:Ljava/lang/String;

.field private mRead:Z

.field private mReportRead:Z

.field private mSmsMmsContacts:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private mVersionCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    iput-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mCursorIndex:I

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSmsMmsContacts:Ljava/lang/String;

    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v1}, Lcom/android/bluetooth/SignedLongLong;->fromString(Ljava/lang/String;)Lcom/android/bluetooth/SignedLongLong;

    move-result-object v7

    iput-object v7, v5, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "name"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput-object v1, v5, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo v7, "last_activity"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "readstatus"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {v5, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v7, "version_counter"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {v5, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "summary"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "BluetoothMapConvoListingElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown XML attribute: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_a

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "convocontact"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V

    goto :goto_2

    :cond_8
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v7, :cond_9

    const-string/jumbo v7, "BluetoothMapConvoListingElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown XML tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_a
    return-object v5
.end method

.method private getSummary()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->truncateUtf8StringToBytearray(Ljava/lang/String;I)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothMapConvoListingElement"

    const-string/jumbo v2, "Missing UTF-8 support on platform"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v4
.end method

.method private setRead(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    :goto_0
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    goto :goto_0
.end method

.method private setVersionCounter(Ljava/lang/String;)V
    .locals 4

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothMapConvoListingElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVersionCounter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BluetoothMapConvoListingElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse XML versionCounter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    goto :goto_0
.end method


# virtual methods
.method public addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

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

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)I

    move-result v0

    return v0
.end method

.method public encode(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const-string/jumbo v2, "conversation"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v3}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const-string/jumbo v2, "last_activity"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivityString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "readstatus"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getRead()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const-string/jumbo v2, "version_counter"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getVersionCounter()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "summary"

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->encode(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "conversation"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

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
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v6

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    if-eqz v1, :cond_4

    return v6

    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v6

    :cond_4
    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    iget-wide v4, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    return v6

    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    if-eqz v1, :cond_7

    return v6

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v6

    :cond_7
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    if-eq v1, v2, :cond_8

    return v6

    :cond_8
    return v7
.end method

.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    return-object v0
.end method

.method public getConvoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v0}, Lcom/android/bluetooth/SignedLongLong;->toHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCpConvoId()J
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    invoke-virtual {v0}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCursorIndex()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mCursorIndex:I

    return v0
.end method

.method public getFullSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActivity()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    return-wide v0
.end method

.method public getLastActivityString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "READ"

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "UNREAD"

    goto :goto_0
.end method

.method public getReadBool()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    return v0
.end method

.method public getSmsMmsContacts()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSmsMmsContacts:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public getVersionCounter()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    return-wide v0
.end method

.method public incrementVersionCounter()V
    .locals 4

    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    return-void
.end method

.method public removeContact(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mContacts:Ljava/util/List;

    return-void
.end method

.method public setConvoId(JJ)V
    .locals 3

    new-instance v0, Lcom/android/bluetooth/SignedLongLong;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mId:Lcom/android/bluetooth/SignedLongLong;

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConvoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setCursorIndex(I)V
    .locals 3

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mCursorIndex:I

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCursorIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setLastActivity(J)V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

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

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mLastActivity:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mName:Ljava/lang/String;

    return-void
.end method

.method public setRead(ZZ)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mRead:Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mReportRead:Z

    return-void
.end method

.method public setSmsMmsContacts(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSmsMmsContacts:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-void
.end method

.method public setVersionCounter(J)V
    .locals 3

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothMapConvoListingElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVersionCounter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->mVersionCounter:J

    return-void
.end method
