.class final Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceValuesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;TV;>;"
    }
.end annotation


# instance fields
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask",
            "<TK;TV;>;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->reducer:Ljava/util/function/BiFunction;

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    add-int v1, v5, v10

    ushr-int/lit8 v4, v1, 0x1

    if-le v4, v10, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountedCompleter;->addToPendingCount(I)V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    ushr-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;Ljava/util/function/BiFunction;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-nez v12, :cond_1

    move-object/from16 v12, v17

    goto :goto_1

    :cond_1
    move-object/from16 v0, v17

    invoke-interface {v8, v12, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    :goto_2
    if-eqz v9, :cond_6

    move-object v15, v9

    check-cast v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    iget-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    :goto_3
    if-eqz v13, :cond_5

    iget-object v14, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    if-eqz v14, :cond_3

    iget-object v0, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    :goto_4
    iput-object v14, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    :cond_3
    iget-object v13, v13, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    iput-object v13, v15, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;

    goto :goto_3

    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v8, v0, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v9

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ReduceValuesTask;->result:Ljava/lang/Object;

    return-object v0
.end method
