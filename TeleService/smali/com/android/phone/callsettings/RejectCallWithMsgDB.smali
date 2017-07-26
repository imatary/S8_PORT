.class public Lcom/android/phone/callsettings/RejectCallWithMsgDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RejectCallWithMsgDB.java"


# static fields
.field public static DefaultMessage:Ljava/lang/String;

.field public static DefaultMessageSimple:Ljava/lang/String;

.field private static final defaultIconIdList:[I

.field private static final defaultPositionList:[I

.field public static defaultRejectMsgList:[I

.field public static final defaultRejectMsgListKor:[I

.field public static final defaultRejectMsgListSimple:[I

.field public static defaultRejectMsgTitleList:[Ljava/lang/String;

.field private static final defaultTitleIdList:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "default_message"

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessage:Ljava/lang/String;

    const-string/jumbo v0, "default_message_simple"

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessageSimple:Ljava/lang/String;

    const v0, 0x7f0d054b

    const v1, 0x7f0d054c

    const v2, 0x7f0d054d

    const v3, 0x7f0d054a

    const v4, 0x7f0d0549

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[I

    const v0, 0x7f0d0550

    const v1, 0x7f0d0551

    const v2, 0x7f0d0552

    const v3, 0x7f0d054f

    const v4, 0x7f0d054e

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[I

    const v0, 0x7f0d0553

    const v1, 0x7f0d0554

    const v2, 0x7f0d0555

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListSimple:[I

    const v0, 0x7f0d09df

    const v1, 0x7f0d09e0

    const v2, 0x7f0d09e1

    const v3, 0x7f0d09de

    const v4, 0x7f0d09dd

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultTitleIdList:[I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "callsettings_rejectmessage_title3"

    aput-object v1, v0, v5

    const-string/jumbo v1, "callsettings_rejectmessage_title4"

    aput-object v1, v0, v6

    const-string/jumbo v1, "callsettings_rejectmessage_title5"

    aput-object v1, v0, v7

    const-string/jumbo v1, "callsettings_rejectmessage_title2"

    aput-object v1, v0, v8

    const-string/jumbo v1, "callsettings_rejectmessage_title1"

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgTitleList:[Ljava/lang/String;

    filled-new-array {v6, v7, v8, v9, v5}, [I

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultIconIdList:[I

    filled-new-array {v9, v8, v7, v6, v5}, [I

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultPositionList:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "rejectmessage.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getDefaultMessageList()[I
    .locals 1

    const-string/jumbo v0, "reject_call_with_message_simple_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListSimple:[I

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[I

    return-object v0
.end method

.method public static getDefaultMessageString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "reject_call_with_message_simple_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessageSimple:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessage:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v5, "CREATE TABLE reject_msg (_id INTEGER PRIMARY KEY AUTOINCREMENT, reject_message TEXT NOT NULL,edit_checked INTEGER NOT NULL,remind_time INTEGER NOT NULL);"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v5, "reject_call_with_message_icon_mode"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "CREATE TABLE reject_msg_icon_mode (_id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL,reject_message TEXT NOT NULL,edit_checked INTEGER NOT NULL,icon_id INTEGER NOT NULL,remind_time INTEGER NOT NULL,position INTEGER NOT NULL);"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v5, "reject_call_with_message_simple_mode"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessageSimple:Ljava/lang/String;

    sget-object v5, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListSimple:[I

    array-length v2, v5

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    if-nez v1, :cond_3

    const/16 v0, 0x3c

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "INSERT INTO reject_msg (\'REJECT_MESSAGE\', \'EDIT_CHECKED\' , \'REMIND_TIME\') values (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' , 0 ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v5, "reject_call_with_message_icon_mode"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    sget-object v5, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[I

    aget v4, v5, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "INSERT INTO reject_msg_icon_mode (title, reject_message, edit_checked, remind_time, icon_id, position) values (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultTitleIdList:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' ,\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' , 0 ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultIconIdList:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultPositionList:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessage:Ljava/lang/String;

    sget-object v5, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[I

    array-length v2, v5

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_4
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    const/4 v3, 0x2

    if-ge p2, v3, :cond_0

    const-string/jumbo v0, "ALTER TABLE reject_msg ADD COLUMN remind_time INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "RejectMsgDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    if-le p2, v3, :cond_2

    const-string/jumbo v0, "DROP TABLE IF EXISTS reject_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "reject_call_with_message_icon_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DROP TABLE IF EXISTS reject_msg_icon_mode"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    return-void
.end method
