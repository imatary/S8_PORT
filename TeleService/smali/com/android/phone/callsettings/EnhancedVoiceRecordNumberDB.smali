.class public Lcom/android/phone/callsettings/EnhancedVoiceRecordNumberDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EnhancedVoiceRecordNumberDB.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "selected_number.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "CREATE TABLE enhanced_selected_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, enhanced_selected_number TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string/jumbo v0, "DROP TABLE IF EXISTS enhanced_selected_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/EnhancedVoiceRecordNumberDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
