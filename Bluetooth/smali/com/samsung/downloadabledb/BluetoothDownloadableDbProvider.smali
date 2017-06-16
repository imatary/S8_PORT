.class public Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;
.super Landroid/content/ContentProvider;
.source "BluetoothDownloadableDbProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final A2DP:I = 0x4

.field public static final A2DP_TABLE:Ljava/lang/String; = "downloadable_a2dp"

.field public static final A2DP_URI:Landroid/net/Uri;

.field private static final AUTH:Ljava/lang/String; = "com.samsung.downloadabledb.BluetoothDownloadableDbProvider"

.field static final BLE:I = 0x2

.field public static final BLE_TABLE:Ljava/lang/String; = "downloadable_ble"

.field public static final BLE_URI:Landroid/net/Uri;

.field public static final CREATE_A2DP_TABLE:Ljava/lang/String; = "CREATE TABLE downloadable_a2dp (downloadable_id INTEGER PRIMARY KEY AUTOINCREMENT, downloadable_item TEXT NOT NULL, downloadable_category TEXT NOT NULL, downloadable_data1 , downloadable_data2 , downloadable_data3 , downloadable_data4 , downloadable_data5 )"

.field public static final CREATE_BLE_TABLE:Ljava/lang/String; = "CREATE TABLE downloadable_ble (downloadable_id INTEGER PRIMARY KEY AUTOINCREMENT, downloadable_item TEXT NOT NULL, downloadable_category TEXT NOT NULL, downloadable_data1 , downloadable_data2 , downloadable_data3 , downloadable_data4 , downloadable_data5 )"

.field public static final CREATE_HFP_TABLE:Ljava/lang/String; = "CREATE TABLE downloadable_hfp (downloadable_id INTEGER PRIMARY KEY AUTOINCREMENT, downloadable_item TEXT NOT NULL, downloadable_category TEXT NOT NULL, downloadable_data1 , downloadable_data2 , downloadable_data3 , downloadable_data4 , downloadable_data5 )"

.field public static final CREATE_POLICY_TABLE:Ljava/lang/String; = "CREATE TABLE policies (downloadable_id INTEGER PRIMARY KEY AUTOINCREMENT, policyName TEXT NOT NULL, policyVersion TEXT NOT NULL )"

.field public static final DATABASE_NAME:Ljava/lang/String; = "downloadable.db"

.field public static final DATABASE_VERSION:I = 0x2

.field public static final DOWNLOADABLE_CATEGORY:Ljava/lang/String; = "downloadable_category"

.field public static final DOWNLOADABLE_DATA1:Ljava/lang/String; = "downloadable_data1"

.field public static final DOWNLOADABLE_DATA2:Ljava/lang/String; = "downloadable_data2"

.field public static final DOWNLOADABLE_DATA3:Ljava/lang/String; = "downloadable_data3"

.field public static final DOWNLOADABLE_DATA4:Ljava/lang/String; = "downloadable_data4"

.field public static final DOWNLOADABLE_DATA5:Ljava/lang/String; = "downloadable_data5"

.field public static final DOWNLOADABLE_ID:Ljava/lang/String; = "downloadable_id"

.field public static final DOWNLOADABLE_ITEM:Ljava/lang/String; = "downloadable_item"

.field static final HFP:I = 0x1

.field public static final HFP_TABLE:Ljava/lang/String; = "downloadable_hfp"

.field public static final HFP_URI:Landroid/net/Uri;

.field public static final KEY_POLICY_NAME:Ljava/lang/String; = "policyName"

.field public static final KEY_POLICY_VERSION:Ljava/lang/String; = "policyVersion"

.field static final POLICY:I = 0x3

.field public static final POLICY_TABLE:Ljava/lang/String; = "policies"

.field public static final POLICY_URI:Landroid/net/Uri;

.field private static final uriMtacher:Landroid/content/UriMatcher;


# instance fields
.field databaseHelper:Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "content://com.samsung.downloadabledb.BluetoothDownloadableDbProvider/downloadable_hfp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->HFP_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.downloadabledb.BluetoothDownloadableDbProvider/downloadable_ble"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->BLE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.downloadabledb.BluetoothDownloadableDbProvider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.downloadabledb.BluetoothDownloadableDbProvider/downloadable_a2dp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->A2DP_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.samsung.downloadabledb.BluetoothDownloadableDbProvider"

    const-string/jumbo v2, "downloadable_hfp"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.samsung.downloadabledb.BluetoothDownloadableDbProvider"

    const-string/jumbo v2, "downloadable_ble"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.samsung.downloadabledb.BluetoothDownloadableDbProvider"

    const-string/jumbo v2, "policies"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.samsung.downloadabledb.BluetoothDownloadableDbProvider"

    const-string/jumbo v2, "downloadable_a2dp"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->databaseHelper:Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "downloadable_hfp"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    :cond_0
    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "downloadable_ble"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "policies"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "downloadable_a2dp"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->databaseHelper:Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-wide/16 v2, 0x0

    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string/jumbo v4, "downloadable_hfp"

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v1

    :cond_0
    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const-string/jumbo v4, "downloadable_ble"

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const-string/jumbo v4, "policies"

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const-string/jumbo v4, "downloadable_a2dp"

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0

    :cond_3
    return-object v6

    :cond_4
    return-object v6
.end method

.method public onCreate()Z
    .locals 2

    new-instance v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->databaseHelper:Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->databaseHelper:Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v5, 0x0

    new-instance v9, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v9}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->databaseHelper:Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "downloadable_hfp"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string/jumbo v1, "downloadable_hfp"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v8

    :cond_0
    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "downloadable_ble"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string/jumbo v1, "downloadable_ble"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "policies"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string/jumbo v1, "policies"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, "downloadable_a2dp"

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string/jumbo v1, "downloadable_a2dp"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    :cond_3
    return-object v5
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->databaseHelper:Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "downloadable_hfp"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    :cond_0
    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "downloadable_ble"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "policies"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->uriMtacher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "downloadable_a2dp"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, -0x1

    return v2
.end method
