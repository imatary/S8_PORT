.class Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LGTRoamingData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/LGTRoamingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/LGTRoamingData;


# direct methods
.method public constructor <init>(Lcom/android/phone/operator/kor/LGTRoamingData;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/operator/kor/LGTRoamingData;

    const-string/jumbo v0, "roaming.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private init(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/operator/kor/LGTRoamingData;

    invoke-static {v6}, Lcom/android/phone/operator/kor/LGTRoamingData;->-get0(Lcom/android/phone/operator/kor/LGTRoamingData;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900d1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/operator/kor/LGTRoamingData;

    invoke-static {v6}, Lcom/android/phone/operator/kor/LGTRoamingData;->-get0(Lcom/android/phone/operator/kor/LGTRoamingData;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/operator/kor/LGTRoamingData;

    invoke-static {v6}, Lcom/android/phone/operator/kor/LGTRoamingData;->-get0(Lcom/android/phone/operator/kor/LGTRoamingData;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900d3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;->this$0:Lcom/android/phone/operator/kor/LGTRoamingData;

    invoke-static {v6}, Lcom/android/phone/operator/kor/LGTRoamingData;->-get0(Lcom/android/phone/operator/kor/LGTRoamingData;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    array-length v7, v0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v0, v6

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    array-length v7, v1

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v2, v1, v6

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    array-length v7, v3

    move v6, v5

    :goto_2
    if-ge v6, v7, :cond_2

    aget-object v2, v3, v6

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    array-length v6, v4

    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v2, v4, v5

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TABLE connect (_id INTEGER PRIMARY KEY, country_code INTEGER, country_name TEXT NOT NULL, country_name_eng TEXT NOT NULL, connect_num TEXT NOT NULL, deleteable INTEGER, default_set INTEGER, iptel INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE country (_id INTEGER PRIMARY KEY, name TEXT NOT NULL, name_kor TEXT NOT NULL, country_num TEXT , chosung TEXT,simplify INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE sid (_id INTEGER PRIMARY KEY, sid TEXT NOT NULL, connect_id TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;->init(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string/jumbo v0, "RoamingData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "DROP TABLE IF EXISTS contact"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/operator/kor/LGTRoamingData$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
