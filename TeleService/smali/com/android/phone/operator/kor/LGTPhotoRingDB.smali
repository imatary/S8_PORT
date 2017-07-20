.class public Lcom/android/phone/operator/kor/LGTPhotoRingDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LGTPhotoRingDB.java"


# instance fields
.field private mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "photoring.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingDB;->mcontext:Landroid/content/Context;

    return-void
.end method

.method private initPhotoringTemplate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/operator/kor/LGTPhotoRingDB;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TABLE photoring_reject_num (_id INTEGER PRIMARY KEY AUTOINCREMENT, photoring_reject_number TEXT NOT NULL,photoring_reject_checked INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE phrase_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, phrase TEXT NOT NULL, content_path TEXT, thumb_path TEXT, data_type INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/LGTPhotoRingDB;->initPhotoringTemplate(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string/jumbo v0, "CREATE TABLE mcid_cache (_id INTEGER PRIMARY KEY AUTOINCREMENT,sender_CTN TEXT NOT NULL, cache_url TEXT, cache_data TEXT, cache_hit INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    const-string/jumbo v0, "DROP TABLE IF EXISTS photoring_reject_num"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/operator/kor/LGTPhotoRingDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    const-string/jumbo v0, "LGTPhotoRingDB"

    const-string/jumbo v1, "updated DB verwion 1 -> 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "CREATE TABLE mcid_cache (_id INTEGER PRIMARY KEY AUTOINCREMENT,sender_CTN TEXT NOT NULL, cache_url TEXT, cache_data TEXT, cache_hit INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
