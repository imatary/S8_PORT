.class public final Landroid/icu/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CollationElementIterator$MaxExpSink;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final IGNORABLE:I = 0x0

.field public static final NULLORDER:I = -0x1


# instance fields
.field private dir_:B

.field private iter_:Landroid/icu/impl/coll/CollationIterator;

.field private offsets_:Landroid/icu/impl/coll/UVector32;

.field private otherHalf_:I

.field private rbc_:Landroid/icu/text/RuleBasedCollator;

.field private string_:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(J)Z
    .locals 2

    invoke-static {p0, p1}, Landroid/icu/text/CollationElementIterator;->ceNeedsTwoParts(J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(JI)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(JI)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/CollationElementIterator;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iput-object p1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iput v0, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    iput-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    iput-object v1, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    return-void
.end method

.method constructor <init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Landroid/icu/text/UCharacterIterator;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    invoke-virtual {p0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method private static final ceNeedsTwoParts(J)Z
    .locals 4

    const-wide v0, 0xffff00ff003fL

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final computeMaxExpansions(Landroid/icu/impl/coll/CollationData;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/coll/CollationData;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Landroid/icu/text/CollationElementIterator$MaxExpSink;

    invoke-direct {v1, v0}, Landroid/icu/text/CollationElementIterator$MaxExpSink;-><init>(Ljava/util/Map;)V

    new-instance v2, Landroid/icu/impl/coll/ContractionsAndExpansions;

    const/4 v3, 0x1

    invoke-direct {v2, v4, v4, v1, v3}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    invoke-virtual {v2, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forData(Landroid/icu/impl/coll/CollationData;)V

    return-object v0
.end method

.method private static final getFirstHalf(JI)I
    .locals 4

    long-to-int v0, p0

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    shr-int/lit8 v1, p2, 0x10

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getMaxExpansion(Ljava/util/Map;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const/4 v3, 0x1

    if-nez p1, :cond_0

    return v3

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_1
    and-int/lit16 v1, p1, 0xc0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    return v1

    :cond_2
    return v3
.end method

.method private static final getSecondHalf(JI)I
    .locals 4

    long-to-int v0, p0

    shl-int/lit8 v0, v0, 0x10

    shr-int/lit8 v1, p2, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    and-int/lit8 v1, p2, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private normalizeDir()B
    .locals 2

    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    goto :goto_0
.end method

.method public static final primaryOrder(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static final secondaryOrder(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static final tertiaryOrder(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Landroid/icu/text/CollationElementIterator;

    if-eqz v2, :cond_2

    move-object v0, p1

    nop

    nop

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v2, v3}, Landroid/icu/text/RuleBasedCollator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    iget v3, v0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Landroid/icu/text/CollationElementIterator;->normalizeDir()B

    move-result v2

    invoke-direct {v0}, Landroid/icu/text/CollationElementIterator;->normalizeDir()B

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iget-object v2, v0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public getMaxExpansion(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v0, v0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    invoke-static {v0, p1}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(Ljava/util/Map;I)I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 3

    const/4 v1, 0x0

    iget-byte v2, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    if-gez v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector32;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v1

    return v1

    :cond_1
    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator;->getCEsLength()I

    move-result v0

    iget v2, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    sget-boolean v2, Landroid/icu/text/CollationElementIterator;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v1

    return v1
.end method

.method public getRuleBasedCollator()Landroid/icu/text/RuleBasedCollator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Landroid/icu/text/CollationElementIterator;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public next()I
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-byte v8, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    if-le v8, v10, :cond_0

    iget v8, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v8, :cond_1

    iget v4, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    iput v9, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    return v4

    :cond_0
    iget-byte v8, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    if-ne v8, v10, :cond_2

    iput-byte v11, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    :cond_1
    :goto_0
    iget-object v8, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationIterator;->clearCEsIfNoneRemaining()V

    iget-object v8, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v0

    const-wide v8, 0x101000100L

    cmp-long v8, v0, v8

    if-nez v8, :cond_4

    const/4 v8, -0x1

    return v8

    :cond_2
    iget-byte v8, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    if-nez v8, :cond_3

    iput-byte v11, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    goto :goto_0

    :cond_3
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Illegal change of direction"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    const/16 v8, 0x20

    ushr-long v6, v0, v8

    long-to-int v3, v0

    invoke-static {v6, v7, v3}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result v2

    invoke-static {v6, v7, v3}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result v5

    if-eqz v5, :cond_5

    or-int/lit16 v8, v5, 0xc0

    iput v8, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    :cond_5
    return v2
.end method

.method public previous()I
    .locals 13

    const/4 v12, -0x1

    const/4 v10, 0x0

    iget-byte v9, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    if-gez v9, :cond_0

    iget v9, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v9, :cond_1

    iget v5, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    iput v10, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    return v5

    :cond_0
    iget-byte v9, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    if-nez v9, :cond_3

    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iget-object v10, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    iput-byte v12, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    :cond_1
    :goto_0
    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    if-nez v9, :cond_2

    new-instance v9, Landroid/icu/impl/coll/UVector32;

    invoke-direct {v9}, Landroid/icu/impl/coll/UVector32;-><init>()V

    iput-object v9, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    :cond_2
    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v9}, Landroid/icu/impl/coll/CollationIterator;->getCEsLength()I

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v9}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v3

    :goto_1
    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iget-object v10, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v9, v10}, Landroid/icu/impl/coll/CollationIterator;->previousCE(Landroid/icu/impl/coll/UVector32;)J

    move-result-wide v0

    const-wide v10, 0x101000100L

    cmp-long v9, v0, v10

    if-nez v9, :cond_6

    return v12

    :cond_3
    iget-byte v9, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    iput-byte v12, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    goto :goto_0

    :cond_4
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "Illegal change of direction"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/16 v9, 0x20

    ushr-long v6, v0, v9

    long-to-int v4, v0

    invoke-static {v6, v7, v4}, Landroid/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result v2

    invoke-static {v6, v7, v4}, Landroid/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result v8

    if-eqz v8, :cond_8

    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v9}, Landroid/icu/impl/coll/UVector32;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    iget-object v10, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    iget-object v9, p0, Landroid/icu/text/CollationElementIterator;->offsets_:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v9, v3}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    :cond_7
    iput v2, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    or-int/lit16 v9, v8, 0xc0

    return v9

    :cond_8
    return v2
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    iput v1, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    iput-byte v1, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    return-void
.end method

.method public setOffset(I)V
    .locals 6

    const/4 v5, 0x0

    if-lez p1, :cond_6

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_6

    move v2, p1

    :cond_0
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v3, v0}, Landroid/icu/text/RuleBasedCollator;->isUnsafe(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/icu/text/RuleBasedCollator;->isUnsafe(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_0

    :cond_2
    if-ge v2, p1, :cond_6

    move v1, v2

    :cond_3
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v3, v1}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    :cond_4
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v2

    if-eq v2, v1, :cond_4

    if-gt v2, p1, :cond_5

    move v1, v2

    :cond_5
    if-lt v2, p1, :cond_3

    move p1, v1

    :cond_6
    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v3, p1}, Landroid/icu/impl/coll/CollationIterator;->resetToOffset(I)V

    iput v5, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    const/4 v3, 0x1

    iput-byte v3, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    return-void
.end method

.method public setText(Landroid/icu/text/UCharacterIterator;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/UCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v2

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Landroid/icu/impl/coll/IterCollationIterator;

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v4, v2, v3}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    :goto_0
    iput-object v1, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iput v5, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    iput-byte v5, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Landroid/icu/impl/coll/FCDIterCollationIterator;

    iget-object v4, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v4, v4, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/icu/impl/coll/FCDIterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v1

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    :goto_0
    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iput v4, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    iput-byte v4, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    return-void

    :cond_0
    new-instance v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v2, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v2, v2, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Landroid/icu/impl/CharacterIteratorWrapper;

    invoke-direct {v2, p1}, Landroid/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v1

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/icu/impl/coll/IterCollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    :goto_0
    iput-object v0, p0, Landroid/icu/text/CollationElementIterator;->iter_:Landroid/icu/impl/coll/CollationIterator;

    iput v4, p0, Landroid/icu/text/CollationElementIterator;->otherHalf_:I

    iput-byte v4, p0, Landroid/icu/text/CollationElementIterator;->dir_:B

    return-void

    :cond_0
    new-instance v0, Landroid/icu/impl/coll/FCDIterCollationIterator;

    iget-object v3, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v0, v3, v1, v2, v4}, Landroid/icu/impl/coll/FCDIterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V

    goto :goto_0
.end method

.method strengthOrder(I)I
    .locals 2

    iget-object v1, p0, Landroid/icu/text/CollationElementIterator;->rbc_:Landroid/icu/text/RuleBasedCollator;

    iget-object v1, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v1, -0x10000

    and-int/2addr p1, v1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    and-int/lit16 p1, p1, -0x100

    goto :goto_0
.end method
