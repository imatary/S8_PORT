.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;
.super Ljava/lang/Object;
.source "CAgentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/ContactAgentDbHelper;->getInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;",
            ">;)[J"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [J

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->apply(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public applyBatchWithBackReference(Ljava/util/ArrayList;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;",
            ">;)[J"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [J

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->apply(Landroid/database/sqlite/SQLiteDatabase;[J)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DB delete : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;->table(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public execute(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->apply(Landroid/database/sqlite/SQLiteDatabase;)J

    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DB query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;->table(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p2, p5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/SQLBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
