.class public Lcom/amap/api/mapcore2d/dn;
.super Ljava/lang/Object;
.source "DBOperation.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/dm;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/mapcore2d/dm;

    const-string/jumbo v1, "logdb.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amap/api/mapcore2d/dm;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dn;->a:Lcom/amap/api/mapcore2d/dm;

    return-void
.end method

.method private a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->a:Lcom/amap/api/mapcore2d/dm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->a:Lcom/amap/api/mapcore2d/dm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/dm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/du;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amap/api/mapcore2d/du",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/du;->b()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/du;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dn;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/du;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_1
    iput-object v4, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "insertData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v4, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_4
    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore2d/du",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/du;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dn;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/du;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_1
    iput-object v3, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "deleteData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_4
    throw v0
.end method

.method public b(Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore2d/du",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/du;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Lcom/amap/api/mapcore2d/du;->b()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dn;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/du;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_1
    iput-object v4, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "updateData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v4, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_4
    throw v0
.end method

.method public c(Ljava/lang/String;Lcom/amap/api/mapcore2d/du;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore2d/du",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dn;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/du;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move-object v0, v8

    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/du;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v9, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    move-object v0, v8

    goto :goto_0

    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2, v0}, Lcom/amap/api/mapcore2d/du;->b(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_2
    iput-object v9, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_5
    move-object v0, v8

    goto :goto_0

    :cond_6
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v9, p0, Lcom/amap/api/mapcore2d/dn;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_7
    throw v0
.end method
