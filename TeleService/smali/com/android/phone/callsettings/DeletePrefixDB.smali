.class public Lcom/android/phone/callsettings/DeletePrefixDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DeletePrefixDB.java"


# static fields
.field private static DefaultMsgNum:I

.field public static final defaultDeletePrefixNumberListCMCC:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    sput v0, Lcom/android/phone/callsettings/DeletePrefixDB;->DefaultMsgNum:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "12520"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/DeletePrefixDB;->defaultDeletePrefixNumberListCMCC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "delete_prefix.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefixDB;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string/jumbo v1, "CREATE TABLE delete_prefix (_id INTEGER PRIMARY KEY AUTOINCREMENT, deleteprefix_number TEXT NOT NULL,edit_checked INTEGER NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "PrefixDB"

    const-string/jumbo v2, "CREATE TABLE delete_prefix (_id INTEGER PRIMARY KEY AUTOINCREMENT, deleteprefix_number TEXT NOT NULL,edit_checked INTEGER NOT NULL);"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/phone/callsettings/DeletePrefixDB;->defaultDeletePrefixNumberListCMCC:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "INSERT INTO delete_prefix (\'DELETEPREFIX_NUMBER\', \'EDIT_CHECKED\') values (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/DeletePrefixDB;->defaultDeletePrefixNumberListCMCC:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' , 1);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string/jumbo v0, "PrefixDB"

    const-string/jumbo v1, "onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "DROP TABLE IF EXISTS delete_prefix"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/DeletePrefixDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
