.class public Lcom/android/bluetooth/pbap/SimVCardComposer;
.super Ljava/lang/Object;
.source "SimVCardComposer.java"


# static fields
.field private static final CHARSET_EUC_KR:I = 0x1

.field private static final CHARSET_UTF_8:I = 0x0

.field private static final D:Z

.field private static final EUC_KR:Ljava/lang/String; = "EUC-KR"

.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field public static final SIM_CONTACT_COLUMN_INDEX_EMAILS:I = 0x2

.field public static final SIM_CONTACT_COLUMN_INDEX_ID:I = 0x3

.field public static final SIM_CONTACT_COLUMN_INDEX_NAME:I = 0x0

.field public static final SIM_CONTACT_COLUMN_INDEX_NUMBER:I = 0x1

.field public static final SIM_CONTACT_EMAILS:Ljava/lang/String; = "emails"

.field public static final SIM_CONTACT_ID:Ljava/lang/String; = "adn_index"

.field public static final SIM_CONTACT_NAME:Ljava/lang/String; = "name"

.field public static final SIM_CONTACT_NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SimVCardComposer"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final V:Z

.field private static mSimSlotNum:I


# instance fields
.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mEndPoint:I

.field private mErrorReason:Ljava/lang/String;

.field private final mIsDoCoMo:Z

.field private mStartPoint:I

.field private mTerminateIsCalled:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/pbap/SimVCardComposer;->V:Z

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/pbap/SimVCardComposer;->D:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string/jumbo v1, "emails"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "adn_index"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_CONTACT_PROJECTION:[Ljava/lang/String;

    sput v3, Lcom/android/bluetooth/pbap/SimVCardComposer;->mSimSlotNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/bluetooth/pbap/SimVCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/pbap/SimVCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v2, "No error"

    iput-object v2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    sget-boolean v2, Lcom/android/bluetooth/pbap/SimVCardComposer;->V:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SimVCardComposer"

    const-string/jumbo v3, "SimVCardComposer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mVCardType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    sput v2, Lcom/android/bluetooth/pbap/SimVCardComposer;->mSimSlotNum:I

    :cond_1
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mIsDoCoMo:Z

    if-eqz p3, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "characterset"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const-string/jumbo p3, "EUC-KR"

    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x0

    :goto_1
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mIsDoCoMo:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v2, "SHIFT_JIS"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo p3, "SHIFT_JIS"

    :cond_5
    iput-object p3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCharset:Ljava/lang/String;

    const-string/jumbo v2, "SimVCardComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Use the charset \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string/jumbo p3, "UTF-8"

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static getSimUri()Landroid/net/Uri;
    .locals 5

    const-string/jumbo v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget v2, Lcom/android/bluetooth/pbap/SimVCardComposer;->mSimSlotNum:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://icc/adn/subId/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "SimVCardComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "SIM_URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method


# virtual methods
.method public buildSimVCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    sget-boolean v13, Lcom/android/bluetooth/pbap/SimVCardComposer;->V:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "SimVCardComposer"

    const-string/jumbo v14, "buildSimVCard"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "data1"

    move-object/from16 v0, p1

    invoke-virtual {v7, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "data2"

    move-object/from16 v0, p1

    invoke-virtual {v7, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string/jumbo v13, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    :goto_0
    if-nez v9, :cond_4

    const/4 v2, 0x0

    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_1

    aget-object v13, v9, v6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string/jumbo v13, ","

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-nez v3, :cond_7

    const/4 v2, 0x0

    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v2, :cond_2

    aget-object v13, v3, v6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_2
    new-instance v1, Lcom/android/vcard/VCardBuilder;

    iget v13, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mVCardType:I

    iget-object v14, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v1, v13, v14}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14}, Lcom/android/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    invoke-virtual {v1}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    array-length v2, v9

    goto :goto_1

    :cond_5
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v13, "data2"

    invoke-virtual {v10, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v13, "data1"

    aget-object v14, v9, v6

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    array-length v2, v3

    goto :goto_4

    :cond_8
    if-nez v6, :cond_9

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_6
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "data2"

    invoke-virtual {v4, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v13, "data1"

    aget-object v14, v3, v6

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v13, 0x1

    if-ne v6, v13, :cond_a

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_6

    :cond_a
    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_6
.end method

.method public createOneEntry()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    sget-boolean v5, Lcom/android/bluetooth/pbap/SimVCardComposer;->D:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "SimVCardComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createOneEntry: mStartPoint = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mEndPoint = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mEndPoint:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    iget v6, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mEndPoint:I

    if-gt v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_2

    :cond_1
    const-string/jumbo v5, "The vCard composer object is not correctly initialized"

    iput-object v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v8

    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-ge v3, v5, :cond_7

    const-string/jumbo v5, "name"

    iget-object v6, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "number"

    iget-object v6, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_5

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "emails"

    iget-object v6, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    move-object v1, v2

    :cond_8
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/bluetooth/pbap/SimVCardComposer;->buildSimVCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/android/bluetooth/pbap/SimVCardComposer;->D:Z

    if-eqz v5, :cond_9

    const-string/jumbo v5, "SimVCardComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createOneEntry: vcard = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    iget-object v5, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    return-object v4
.end method

.method protected finalize()V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/pbap/SimVCardComposer;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SimVCardComposer"

    const-string/jumbo v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/SimVCardComposer;->terminate()V

    :cond_1
    return-void
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/pbap/SimVCardComposer;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SimVCardComposer"

    const-string/jumbo v1, "getErrorReason"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(II)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/bluetooth/pbap/SimVCardComposer;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SimVCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init: startPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", endPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    iput p2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mEndPoint:I

    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/bluetooth/pbap/SimVCardComposer;->getSimUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    const-string/jumbo v0, "SimVCardComposer"

    const-string/jumbo v1, "init: mCursor = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    return v7

    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/pbap/SimVCardComposer;->D:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SimVCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init: mCursor.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v0, "There\'s no exportable in the database"

    :goto_0
    iput-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    return v7

    :catch_0
    move-exception v6

    :try_start_1
    const-string/jumbo v0, "SimVCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v0, "There\'s no exportable in the database"

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    throw v0
.end method

.method public isAfterLast()Z
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/pbap/SimVCardComposer;->V:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SimVCardComposer"

    const-string/jumbo v1, "isAfterLast"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    iget v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mEndPoint:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public terminate()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/bluetooth/pbap/SimVCardComposer;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SimVCardComposer"

    const-string/jumbo v2, "terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mTerminateIsCalled:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SimVCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
