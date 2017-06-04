.class public final Lcom/sec/android/gallery3d/common/EntrySchema;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;
    }
.end annotation


# static fields
.field private static final FULL_TEXT_INDEX_SUFFIX:Ljava/lang/String; = "_fulltext"

.field private static final SQLITE_TYPES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EntrySchema"

.field private static final TYPE_BLOB:I = 0x7

.field private static final TYPE_BOOLEAN:I = 0x1

.field private static final TYPE_DOUBLE:I = 0x6

.field private static final TYPE_FLOAT:I = 0x5

.field private static final TYPE_INT:I = 0x3

.field private static final TYPE_LONG:I = 0x4

.field private static final TYPE_SHORT:I = 0x2

.field private static final TYPE_STRING:I


# instance fields
.field private final mColumnInfo:[Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;

.field private final mHasFullTextIndex:Z

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "INTEGER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "REAL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/common/Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;)[Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/common/EntrySchema;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_1

    aget-object v0, v1, v3

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$000(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    return-void
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    :goto_0
    array-length v0, v9

    if-eq v10, v0, :cond_9

    aget-object v7, v9, v10

    const-class v0, Lcom/sec/android/gallery3d/common/Entry$Column;

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/common/Entry$Column;

    if-nez v11, :cond_0

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v0, Ljava/lang/String;

    if-ne v8, v0, :cond_1

    const/4 v2, 0x0

    :goto_2
    new-instance v0, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;

    invoke-interface {v11}, Lcom/sec/android/gallery3d/common/Entry$Column;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lcom/sec/android/gallery3d/common/Entry$Column;->indexed()Z

    move-result v3

    invoke-interface {v11}, Lcom/sec/android/gallery3d/common/Entry$Column;->unique()Z

    move-result v4

    invoke-interface {v11}, Lcom/sec/android/gallery3d/common/Entry$Column;->fullText()Z

    move-result v5

    invoke-interface {v11}, Lcom/sec/android/gallery3d/common/Entry$Column;->defaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;-><init>(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/reflect/Field;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v0, :cond_7

    const/4 v2, 0x6

    goto :goto_2

    :cond_7
    const-class v0, [B

    if-ne v8, v0, :cond_8

    const/4 v2, 0x7

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported field type for column: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;)[Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/gallery3d/common/EntrySchema;->parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method private parseTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v1, Lcom/sec/android/gallery3d/common/Entry$Table;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/common/Entry$Table;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/gallery3d/common/Entry$Table;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    if-eqz v7, :cond_2

    const/4 v9, 0x1

    :goto_0
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "CREATE TABLE "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " (_id INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v11, v10

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v0, v10, v9

    # invokes: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->isId()Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$100(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Z

    move-result v12

    if-nez v12, :cond_1

    const/16 v12, 0x2c

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$200(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/sec/android/gallery3d/common/EntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->type:I
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$300(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$400(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, " DEFAULT "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$400(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->unique:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$500(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-nez v12, :cond_3

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$200(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/16 v12, 0x2c

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$200(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v9, "EntrySchema"

    const-string/jumbo v10, "Error executingSQL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_3
    return-void

    :cond_4
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    const-string/jumbo v9, ",UNIQUE("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const-string/jumbo v9, ");"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lcom/sec/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v11, v10

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v11, :cond_7

    aget-object v0, v10, v9

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->indexed:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$600(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "CREATE INDEX "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "_index_"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$200(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, " ON "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, " ("

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$200(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, ");"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, p1, v12}, Lcom/sec/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    iget-boolean v9, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v9, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_fulltext"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "CREATE VIRTUAL TABLE "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " USING FTS3 (_id INTEGER PRIMARY KEY"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v11, v10

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v11, :cond_9

    aget-object v0, v10, v9

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$000(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Z

    move-result v12

    if-eqz v12, :cond_8

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$200(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0x2c

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, " TEXT"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    const-string/jumbo v9, ");"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lcom/sec/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "INSERT OR REPLACE INTO "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " (_id"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v11, v10

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v11, :cond_b

    aget-object v0, v10, v9

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$000(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x2c

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$200(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    const-string/jumbo v9, ") VALUES (new._id"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mColumnInfo:[Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;

    array-length v11, v10

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v11, :cond_d

    aget-object v0, v10, v9

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->fullText:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$000(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Z

    move-result v12

    if-eqz v12, :cond_c

    const-string/jumbo v12, ",new."

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;->access$200(Lcom/sec/android/gallery3d/common/EntrySchema$ColumnInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_d
    const-string/jumbo v9, ");"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "CREATE TRIGGER "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "_insert_trigger AFTER INSERT ON "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " FOR EACH ROW BEGIN "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "END;"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lcom/sec/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v9, "CREATE TRIGGER "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "_update_trigger AFTER UPDATE ON "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " FOR EACH ROW BEGIN "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "END;"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lcom/sec/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v9, "CREATE TRIGGER "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "_delete_trigger AFTER DELETE ON "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " FOR EACH ROW BEGIN DELETE FROM "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, " WHERE _id = old._id; END;"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lcom/sec/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_3

    :catchall_0
    move-exception v9

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/16 v4, 0x3b

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DROP TABLE IF EXISTS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mHasFullTextIndex:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_fulltext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/gallery3d/common/EntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/EntrySchema;->mTableName:Ljava/lang/String;

    return-object v0
.end method
