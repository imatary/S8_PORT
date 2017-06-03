.class public final Landroid/icu/impl/coll/ContractionsAndExpansions;
.super Ljava/lang/Object;
.source "ContractionsAndExpansions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private addPrefixes:Z

.field private ces:[J

.field private checkTailored:I

.field private contractions:Landroid/icu/text/UnicodeSet;

.field private data:Landroid/icu/impl/coll/CollationData;

.field private expansions:Landroid/icu/text/UnicodeSet;

.field private ranges:Landroid/icu/text/UnicodeSet;

.field private sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

.field private suffix:Ljava/lang/String;

.field private tailored:Landroid/icu/text/UnicodeSet;

.field private unreversedPrefix:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/ContractionsAndExpansions;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/ContractionsAndExpansions;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/16 v0, 0x1f

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    iput-object p2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    iput-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    iput-boolean p4, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->addPrefixes:Z

    return-void
.end method

.method private enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V
    .locals 4

    iget v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p4, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    return-void

    :cond_1
    iget v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    if-gez v2, :cond_3

    const/16 v2, 0xc0

    if-ne p3, v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_3
    if-ne p1, p2, :cond_4

    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_4
    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, p1, p2}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    if-nez v2, :cond_5

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    :cond_5
    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, p1, p2}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    iget-object v3, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v2

    iget-object v3, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v3

    invoke-direct {p4, v2, v3, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private handleCE32(III)V
    .locals 11

    :goto_0
    and-int/lit16 v6, p3, 0xff

    const/16 v7, 0xc0

    if-ge v6, v7, :cond_1

    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :pswitch_1
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Unexpected CE32 tag type %d for ce32=0x%08x"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :pswitch_2
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    :cond_2
    return-void

    :pswitch_3
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    :cond_3
    return-void

    :pswitch_4
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide v8

    const/4 v7, 0x0

    aput-wide v8, v6, v7

    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide v8

    const/4 v7, 0x1

    aput-wide v8, v6, v7

    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v7, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-interface {v6, v7, v8, v9}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    :cond_4
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_5
    return-void

    :pswitch_5
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v6, :cond_7

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v3

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_6

    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    iget-object v7, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v7, v7, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int v8, v3, v2

    aget v7, v7, v8

    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v8

    aput-wide v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v7, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, v5}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    :cond_7
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_8
    return-void

    :pswitch_6
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v6, :cond_9

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v3

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v5

    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v7, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v7, v7, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-interface {v6, v7, v3, v5}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    :cond_9
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_a
    return-void

    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handlePrefixes(III)V

    return-void

    :pswitch_8
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleContractions(III)V

    return-void

    :pswitch_9
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v6, v6, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v7

    aget p3, v6, v7

    goto/16 :goto_0

    :pswitch_a
    sget-boolean v6, Landroid/icu/impl/coll/ContractionsAndExpansions;->-assertionsDisabled:Z

    if-nez v6, :cond_c

    if-nez p1, :cond_b

    if-nez p2, :cond_b

    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_c

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    :cond_c
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v6, v6, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    const/4 v7, 0x0

    aget p3, v6, v7

    goto/16 :goto_0

    :pswitch_b
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v6, :cond_f

    new-instance v4, Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v4, v6}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p1

    :goto_3
    if-gt v0, p2, :cond_f

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v1, v7}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    invoke-virtual {v4}, Landroid/icu/impl/coll/UTF16CollationIterator;->fetchCEs()I

    move-result v5

    sget-boolean v6, Landroid/icu/impl/coll/ContractionsAndExpansions;->-assertionsDisabled:Z

    if-nez v6, :cond_e

    const/4 v6, 0x2

    if-lt v5, v6, :cond_d

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Landroid/icu/impl/coll/UTF16CollationIterator;->getCE(I)J

    move-result-wide v6

    const-wide v8, 0x101000100L

    cmp-long v6, v6, v8

    if-nez v6, :cond_d

    const/4 v6, 0x1

    :goto_4
    if-nez v6, :cond_e

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_d
    const/4 v6, 0x0

    goto :goto_4

    :cond_e
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    invoke-virtual {v4}, Landroid/icu/impl/coll/UTF16CollationIterator;->getCEs()[J

    move-result-object v7

    add-int/lit8 v8, v5, -0x1

    const/4 v9, 0x0

    invoke-interface {v6, v7, v9, v8}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    iget-object v6, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_10
    return-void

    :pswitch_c
    return-void

    :pswitch_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private handlePrefixes(III)V
    .locals 6

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v1

    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v1}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    iget-boolean v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->addPrefixes:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Landroid/icu/util/CharsTrie;

    iget-object v4, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x2

    invoke-direct {v3, v4, v5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v3}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    iget-object v3, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->setPrefix(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    iget v3, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->resetPrefix()V

    return-void
.end method

.method private resetPrefix()V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private setPrefix(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method addExpansions(II)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    goto :goto_0
.end method

.method addStrings(IILandroid/icu/text/UnicodeSet;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p3, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 p1, p1, 0x1

    if-le p1, p2, :cond_1

    return-void
.end method

.method public forCodePoint(Landroid/icu/impl/coll/CollationData;I)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    :cond_0
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {p0, p2, p2, v0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    return-void
.end method

.method public forData(Landroid/icu/impl/coll/CollationData;)V
    .locals 5

    iget-object v2, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    :cond_0
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v2}, Landroid/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v2, :cond_3

    return-void

    :cond_2
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v4, v0, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v2, v3, v4, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    const/4 v2, 0x1

    iput v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    iget-object v2, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    iput-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v2}, Landroid/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v2, :cond_5

    :cond_4
    return-void

    :cond_5
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v4, v0, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v2, v3, v4, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V

    goto :goto_1
.end method

.method handleContractions(III)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v1

    and-int/lit16 v5, p3, 0x100

    if-eqz v5, :cond_1

    sget-boolean v5, Landroid/icu/impl/coll/ContractionsAndExpansions;->-assertionsDisabled:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    if-nez v4, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v5, v1}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p3

    sget-boolean v5, Landroid/icu/impl/coll/ContractionsAndExpansions;->-assertionsDisabled:Z

    if-nez v5, :cond_3

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    :cond_4
    new-instance v3, Landroid/icu/util/CharsTrie;

    iget-object v4, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x2

    invoke-direct {v3, v4, v5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v3}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    iget-object v3, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    :cond_5
    iget v3, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, p2, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    return-void
.end method
