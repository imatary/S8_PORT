.class final Landroid/icu/text/CollationElementIterator$MaxExpSink;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"

# interfaces
.implements Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CollationElementIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MaxExpSink"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private maxExpansions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/CollationElementIterator$MaxExpSink;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/CollationElementIterator$MaxExpSink;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/CollationElementIterator$MaxExpSink;->maxExpansions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public handleCE(J)V
    .locals 0

    return-void
.end method

.method public handleExpansion([JII)V
    .locals 12

    const/4 v7, 0x1

    if-gt p3, v7, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_2

    add-int v7, p2, v3

    aget-wide v10, p1, v7

    invoke-static {v10, v11}, Landroid/icu/text/CollationElementIterator;->-wrap0(J)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    :goto_1
    add-int/2addr v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    add-int v7, p2, p3

    add-int/lit8 v7, v7, -0x1

    aget-wide v0, p1, v7

    const/16 v7, 0x20

    ushr-long v8, v0, v7

    long-to-int v5, v0

    invoke-static {v8, v9, v5}, Landroid/icu/text/CollationElementIterator;->-wrap2(JI)I

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v8, v9, v5}, Landroid/icu/text/CollationElementIterator;->-wrap1(JI)I

    move-result v4

    sget-boolean v7, Landroid/icu/text/CollationElementIterator$MaxExpSink;->-assertionsDisabled:Z

    if-nez v7, :cond_5

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    :goto_2
    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    or-int/lit16 v4, v4, 0xc0

    :cond_5
    iget-object v7, p0, Landroid/icu/text/CollationElementIterator$MaxExpSink;->maxExpansions:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v2, v7, :cond_7

    :cond_6
    iget-object v7, p0, Landroid/icu/text/CollationElementIterator$MaxExpSink;->maxExpansions:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method
