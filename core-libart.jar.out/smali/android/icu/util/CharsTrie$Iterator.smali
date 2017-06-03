.class public final Landroid/icu/util/CharsTrie$Iterator;
.super Ljava/lang/Object;
.source "CharsTrie.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CharsTrie;
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
        "Landroid/icu/util/CharsTrie$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private chars_:Ljava/lang/CharSequence;

.field private entry_:Landroid/icu/util/CharsTrie$Entry;

.field private initialPos_:I

.field private initialRemainingMatchLength_:I

.field private maxLength_:I

.field private pos_:I

.field private remainingMatchLength_:I

.field private skipValue_:Z

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

.field private str_:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;III)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    new-instance v1, Landroid/icu/util/CharsTrie$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/util/CharsTrie$Entry;-><init>(Landroid/icu/util/CharsTrie$Entry;)V

    iput-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/icu/util/CharsTrie$Iterator;->initialPos_:I

    iput p2, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    iput p3, p0, Landroid/icu/util/CharsTrie$Iterator;->initialRemainingMatchLength_:I

    iput p3, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    iput p4, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    :cond_0
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    iget v4, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie$Iterator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;III)V

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

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    invoke-static {v6, p1}, Landroid/icu/util/CharsTrie;->-wrap3(Ljava/lang/CharSequence;I)I

    move-result v6

    int-to-long v6, v6

    shl-long/2addr v6, v11

    shr-int/lit8 v8, p2, 0x1

    sub-int v8, p2, v8

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    or-long/2addr v6, v8

    iget-object v8, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    shr-int/lit8 p2, p2, 0x1

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    invoke-static {v5, p1}, Landroid/icu/util/CharsTrie;->-wrap0(Ljava/lang/CharSequence;I)I

    move-result p1

    move v2, p1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 p1, v2, 0x1

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v5, 0x8000

    and-int/2addr v5, v1

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    and-int/lit16 v1, v1, 0x7fff

    invoke-static {v5, v2, v1}, Landroid/icu/util/CharsTrie;->-wrap2(Ljava/lang/CharSequence;II)I

    move-result v4

    invoke-static {v2, v1}, Landroid/icu/util/CharsTrie;->-wrap5(II)I

    move-result p1

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    int-to-long v6, p1

    shl-long/2addr v6, v11

    add-int/lit8 v8, p2, -0x1

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    or-long/2addr v6, v8

    iget-object v8, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iput v10, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v6, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iput-object v6, v5, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iput v4, v5, Landroid/icu/util/CharsTrie$Entry;->value:I

    return v10

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    add-int v5, p1, v4

    return v5
.end method

.method private truncateAndStop()Landroid/icu/util/CharsTrie$Entry;
    .locals 3

    const/4 v2, -0x1

    iput v2, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iput-object v1, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iput v2, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    if-gez v2, :cond_0

    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public next()Landroid/icu/util/CharsTrie$Entry;
    .locals 12

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget v3, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    if-gez v3, :cond_2

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/NoSuchElementException;

    invoke-direct {v5}, Ljava/util/NoSuchElementException;-><init>()V

    throw v5

    :cond_0
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v1, v6

    const/16 v5, 0x20

    shr-long v10, v6, v5

    long-to-int v3, v10

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    const v9, 0xffff

    and-int/2addr v9, v1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    ushr-int/lit8 v1, v1, 0x10

    if-le v1, v8, :cond_1

    invoke-direct {p0, v3, v1}, Landroid/icu/util/CharsTrie$Iterator;->branchNext(II)I

    move-result v3

    if-gez v3, :cond_2

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    return-object v5

    :cond_1
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    :cond_2
    iget v5, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    if-ltz v5, :cond_4

    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v5

    return-object v5

    :cond_3
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int v10, v3, v1

    invoke-virtual {v5, v9, v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/2addr v3, v1

    :cond_4
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v5, 0x40

    if-lt v2, v5, :cond_d

    iget-boolean v5, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    if-eqz v5, :cond_5

    invoke-static {v4, v2}, Landroid/icu/util/CharsTrie;->-wrap4(II)I

    move-result v3

    and-int/lit8 v2, v2, 0x3f

    iput-boolean v0, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    :goto_0
    iget v5, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v5, :cond_a

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    iget v9, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-ne v5, v9, :cond_a

    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v5

    return-object v5

    :cond_5
    const v5, 0x8000

    and-int/2addr v5, v2

    if-eqz v5, :cond_6

    move v0, v8

    :cond_6
    if-eqz v0, :cond_8

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v9, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    and-int/lit16 v10, v2, 0x7fff

    invoke-static {v9, v4, v10}, Landroid/icu/util/CharsTrie;->-wrap2(Ljava/lang/CharSequence;II)I

    move-result v9

    iput v9, v5, Landroid/icu/util/CharsTrie$Entry;->value:I

    :goto_1
    if-nez v0, :cond_7

    iget v5, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v5, :cond_9

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    iget v9, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-ne v5, v9, :cond_9

    :cond_7
    const/4 v5, -0x1

    iput v5, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    :goto_2
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v8, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iput-object v8, v5, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    return-object v5

    :cond_8
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v9, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    invoke-static {v9, v4, v2}, Landroid/icu/util/CharsTrie;->-wrap1(Ljava/lang/CharSequence;II)I

    move-result v9

    iput v9, v5, Landroid/icu/util/CharsTrie$Entry;->value:I

    goto :goto_1

    :cond_9
    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    iput-boolean v8, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    goto :goto_2

    :cond_a
    const/16 v5, 0x30

    if-ge v2, v5, :cond_c

    if-nez v2, :cond_b

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v3, v4

    :cond_b
    add-int/lit8 v5, v2, 0x1

    invoke-direct {p0, v3, v5}, Landroid/icu/util/CharsTrie$Iterator;->branchNext(II)I

    move-result v3

    if-gez v3, :cond_4

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    return-object v5

    :cond_c
    add-int/lit8 v5, v2, -0x30

    add-int/lit8 v1, v5, 0x1

    iget v5, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v5, :cond_3

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v1

    iget v9, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-le v5, v9, :cond_3

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    iget v9, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    add-int/2addr v9, v3

    iget-object v10, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v5, v8, v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v5

    return-object v5

    :cond_d
    move v3, v4

    goto/16 :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()Landroid/icu/util/CharsTrie$Iterator;
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->initialPos_:I

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->initialRemainingMatchLength_:I

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    iput-boolean v2, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    add-int/lit8 v0, v1, 0x1

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    :cond_0
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method
