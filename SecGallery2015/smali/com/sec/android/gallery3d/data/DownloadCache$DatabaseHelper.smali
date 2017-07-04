.class final Lcom/sec/android/gallery3d/data/DownloadCache$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "download.db"

.field public static final DATABASE_VERSION:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/DownloadCache;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/DownloadCache;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DatabaseHelper;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    const-string/jumbo v0, "download.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    sget-object v2, Lcom/sec/android/gallery3d/data/DownloadEntry;->SCHEMA:Lcom/sec/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DownloadCache$DatabaseHelper;->this$0:Lcom/sec/android/gallery3d/data/DownloadCache;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DownloadCache;->access$100(Lcom/sec/android/gallery3d/data/DownloadCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "DownloadCache"

    const-string/jumbo v5, "fail to remove file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/DownloadEntry;->SCHEMA:Lcom/sec/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/DownloadCache$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
