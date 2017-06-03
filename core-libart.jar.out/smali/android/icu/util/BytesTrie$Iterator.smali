.class public final Landroid/icu/util/BytesTrie$Iterator;
.super Ljava/lang/Object;
.source "BytesTrie.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/icu/util/BytesTrie$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private bytes_:[B

.field private entry_:Landroid/icu/util/BytesTrie$Entry;

.field private initialPos_:I

.field private initialRemainingMatchLength_:I

.field private maxLength_:I

.field private pos_:I

.field private remainingMatchLength_:I

.field private stack_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([BIII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    iput p2, p0, Landroid/icu/util/BytesTrie$Iterator;->initialPos_:I

    iput p2, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    iput p3, p0, Landroid/icu/util/BytesTrie$Iterator;->initialRemainingMatchLength_:I

    iput p3, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    iput p4, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    new-instance v2, Landroid/icu/util/BytesTrie$Entry;

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/icu/util/BytesTrie$Entry;-><init>(ILandroid/icu/util/BytesTrie$Entry;)V

    iput-object v2, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    :cond_0
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iget-object v2, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    iget v3, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    invoke-static {v1, v2, v3, v0}, Landroid/icu/util/BytesTrie$Entry;->-wrap0(Landroid/icu/util/BytesTrie$Entry;[BII)V

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x20

    goto :goto_0
.end method

.method synthetic constructor <init>([BIIILandroid/icu/util/BytesTrie$Iterator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIII)V

    return-void
.end method

.method private branchNext(II)I
    .locals 12

    const/16 v11, 0x20

    const/4 v10, -0x1

    move v2, p1

    :goto_0
    const/4 v5, 0x5

    if-le p2, v5, :cond_0

    add-int/lit8 p1, v2, 0x1

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v6, p1}, Landroid/icu/util/BytesTrie;->-wrap2([BI)I

    move-result v6

    int-to-long v6, v6

    shl-long/2addr v6, v11

    shr-int/lit8 v8, p2, 0x1

    sub-int v8, p2, v8

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    or-long/2addr v6, v8

    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v8}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    shr-int/lit8 p2, p2, 0x1

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v5, p1}, Landroid/icu/util/BytesTrie;->-wrap0([BI)I

    move-result p1

    move v2, p1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 p1, v2, 0x1

    aget-byte v3, v5, v2

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v5, v5, p1

    and-int/lit16 v1, v5, 0xff

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    shr-int/lit8 v6, v1, 0x1

    invoke-static {v5, v2, v6}, Landroid/icu/util/BytesTrie;->-wrap1([BII)I

    move-result v4

    invoke-static {v2, v1}, Landroid/icu/util/BytesTrie;->-wrap3(II)I

    move-result p1

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    int-to-long v6, p1

    shl-long/2addr v6, v11

    add-int/lit8 v8, p2, -0x1

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    or-long/2addr v6, v8

    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v8}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v5, v3}, Landroid/icu/util/BytesTrie$Entry;->-wrap1(Landroid/icu/util/BytesTrie$Entry;B)V

    if-eqz v0, :cond_2

    iput v10, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iput v4, v5, Landroid/icu/util/BytesTrie$Entry;->value:I

    return v10

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    add-int v5, p1, v4

    return v5
.end method

.method private truncateAndStop()Landroid/icu/util/BytesTrie$Entry;
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    iget-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iput v1, v0, Landroid/icu/util/BytesTrie$Entry;->value:I

    iget-object v0, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    if-gez v2, :cond_0

    iget-object v2, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public next()Landroid/icu/util/BytesTrie$Entry;
    .locals 11

    const/16 v10, 0x20

    iget v3, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    if-gez v3, :cond_2

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/NoSuchElementException;

    invoke-direct {v5}, Ljava/util/NoSuchElementException;-><init>()V

    throw v5

    :cond_0
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v1, v6

    shr-long v8, v6, v10

    long-to-int v3, v8

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    const v8, 0xffff

    and-int/2addr v8, v1

    invoke-static {v5, v8}, Landroid/icu/util/BytesTrie$Entry;->-wrap2(Landroid/icu/util/BytesTrie$Entry;I)V

    ushr-int/lit8 v1, v1, 0x10

    const/4 v5, 0x1

    if-le v1, v5, :cond_1

    invoke-direct {p0, v3, v1}, Landroid/icu/util/BytesTrie$Iterator;->branchNext(II)I

    move-result v3

    if-gez v3, :cond_2

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    return-object v5

    :cond_1
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v8, v8, v3

    invoke-static {v5, v8}, Landroid/icu/util/BytesTrie$Entry;->-wrap1(Landroid/icu/util/BytesTrie$Entry;B)V

    move v3, v4

    :cond_2
    iget v5, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    if-ltz v5, :cond_4

    invoke-direct {p0}, Landroid/icu/util/BytesTrie$Iterator;->truncateAndStop()Landroid/icu/util/BytesTrie$Entry;

    move-result-object v5

    return-object v5

    :cond_3
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v5, v8, v4, v1}, Landroid/icu/util/BytesTrie$Entry;->-wrap0(Landroid/icu/util/BytesTrie$Entry;[BII)V

    add-int v3, v4, v1

    :cond_4
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v5, v3

    and-int/lit16 v2, v5, 0xff

    if-lt v2, v10, :cond_8

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_6

    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    shr-int/lit8 v9, v2, 0x1

    invoke-static {v8, v4, v9}, Landroid/icu/util/BytesTrie;->-wrap1([BII)I

    move-result v8

    iput v8, v5, Landroid/icu/util/BytesTrie$Entry;->value:I

    if-nez v0, :cond_5

    iget v5, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v5, :cond_7

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v5}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v5

    iget v8, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-ne v5, v8, :cond_7

    :cond_5
    const/4 v5, -0x1

    iput v5, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    :goto_1
    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    return-object v5

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    invoke-static {v4, v2}, Landroid/icu/util/BytesTrie;->-wrap3(II)I

    move-result v5

    iput v5, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    goto :goto_1

    :cond_8
    iget v5, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v5, :cond_9

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v5}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v5

    iget v8, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-ne v5, v8, :cond_9

    invoke-direct {p0}, Landroid/icu/util/BytesTrie$Iterator;->truncateAndStop()Landroid/icu/util/BytesTrie$Entry;

    move-result-object v5

    return-object v5

    :cond_9
    const/16 v5, 0x10

    if-ge v2, v5, :cond_a

    if-nez v2, :cond_b

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v5, v5, v4

    and-int/lit16 v2, v5, 0xff

    :goto_2
    add-int/lit8 v5, v2, 0x1

    invoke-direct {p0, v3, v5}, Landroid/icu/util/BytesTrie$Iterator;->branchNext(II)I

    move-result v3

    if-gez v3, :cond_4

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    return-object v5

    :cond_a
    add-int/lit8 v5, v2, -0x10

    add-int/lit8 v1, v5, 0x1

    iget v5, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v5, :cond_3

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v5}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v5

    add-int/2addr v5, v1

    iget v8, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-le v5, v8, :cond_3

    iget-object v5, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    iget-object v8, p0, Landroid/icu/util/BytesTrie$Iterator;->bytes_:[B

    iget v9, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    iget-object v10, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v10}, Landroid/icu/util/BytesTrie$Entry;->-get0(Landroid/icu/util/BytesTrie$Entry;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v5, v8, v4, v9}, Landroid/icu/util/BytesTrie$Entry;->-wrap0(Landroid/icu/util/BytesTrie$Entry;[BII)V

    invoke-direct {p0}, Landroid/icu/util/BytesTrie$Iterator;->truncateAndStop()Landroid/icu/util/BytesTrie$Entry;

    move-result-object v5

    return-object v5

    :cond_b
    move v3, v4

    goto :goto_2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/BytesTrie$Iterator;->next()Landroid/icu/util/BytesTrie$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()Landroid/icu/util/BytesTrie$Iterator;
    .locals 2

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->initialPos_:I

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->initialRemainingMatchLength_:I

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    add-int/lit8 v0, v1, 0x1

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/icu/util/BytesTrie$Iterator;->maxLength_:I

    :cond_0
    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->entry_:Landroid/icu/util/BytesTrie$Entry;

    invoke-static {v1, v0}, Landroid/icu/util/BytesTrie$Entry;->-wrap2(Landroid/icu/util/BytesTrie$Entry;I)V

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->pos_:I

    iget v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    iget-object v1, p0, Landroid/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method
