.class Landroid/icu/text/StringSearch$CollationPCE;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollationPCE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;,
        Landroid/icu/text/StringSearch$CollationPCE$PCEI;,
        Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;,
        Landroid/icu/text/StringSearch$CollationPCE$RCEI;,
        Landroid/icu/text/StringSearch$CollationPCE$Range;
    }
.end annotation


# static fields
.field private static final BUFFER_GROW:I = 0x8

.field private static final CONTINUATION_MARKER:I = 0xc0

.field private static final DEFAULT_BUFFER_SIZE:I = 0x10

.field private static final PRIMARYORDERMASK:I = -0x10000

.field public static final PROCESSED_NULLORDER:J = -0x1L


# instance fields
.field private cei_:Landroid/icu/text/CollationElementIterator;

.field private isShifted_:Z

.field private pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

.field private strength_:I

.field private toShift_:Z

.field private variableTop_:I


# direct methods
.method public constructor <init>(Landroid/icu/text/CollationElementIterator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;-><init>(Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;)V

    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {p0, p1}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/CollationElementIterator;)V

    return-void
.end method

.method private init(Landroid/icu/text/RuleBasedCollator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->toShift_:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v0

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->variableTop_:I

    return-void
.end method

.method private static isContinuation(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processCE(I)J
    .locals 12

    const/4 v9, 0x3

    const-wide/16 v10, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    packed-switch v8, :pswitch_data_0

    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->tertiaryOrder(I)I

    move-result v8

    int-to-long v6, v8

    :pswitch_0
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->secondaryOrder(I)I

    move-result v8

    int-to-long v4, v8

    :pswitch_1
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v8

    int-to-long v0, v8

    iget-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->toShift_:Z

    if-eqz v8, :cond_1

    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->variableTop_:I

    if-le v8, p1, :cond_1

    cmp-long v8, v0, v10

    if-eqz v8, :cond_1

    :cond_0
    cmp-long v8, v0, v10

    if-nez v8, :cond_4

    return-wide v10

    :cond_1
    iget-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    if-eqz v8, :cond_2

    cmp-long v8, v0, v10

    if-eqz v8, :cond_0

    :cond_2
    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    if-lt v8, v9, :cond_3

    const-wide/32 v2, 0xffff

    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    :goto_0
    const/16 v8, 0x30

    shl-long v8, v0, v8

    const/16 v10, 0x20

    shl-long v10, v4, v10

    or-long/2addr v8, v10

    const/16 v10, 0x10

    shl-long v10, v6, v10

    or-long/2addr v8, v10

    or-long/2addr v8, v2

    return-wide v8

    :cond_4
    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    if-lt v8, v9, :cond_5

    move-wide v2, v0

    :cond_5
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x0

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public init(Landroid/icu/text/CollationElementIterator;)V
    .locals 1

    iput-object p1, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->getRuleBasedCollator()Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/RuleBasedCollator;)V

    return-void
.end method

.method public nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {v3}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->reset()V

    :goto_0
    iget-object v3, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    iget-object v3, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    const-wide/16 v4, -0x1

    :cond_0
    if-eqz p1, :cond_1

    iput v2, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    iput v1, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    :cond_1
    return-wide v4

    :cond_2
    invoke-direct {p0, v0}, Landroid/icu/text/StringSearch$CollationPCE;->processCE(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method public previousProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J
    .locals 14

    const/4 v13, 0x0

    const/4 v12, -0x1

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :cond_0
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {v7}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->empty()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;

    invoke-direct {v5, v13}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;-><init>(Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;)V

    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v7}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v2

    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v7}, Landroid/icu/text/CollationElementIterator;->previous()I

    move-result v0

    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v7}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v3

    if-ne v0, v12, :cond_6

    invoke-virtual {v5}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->empty()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_2
    :goto_1
    if-eqz v1, :cond_7

    :cond_3
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {v7}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->empty()Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz p1, :cond_4

    iput v12, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    iput v12, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    :cond_4
    const-wide/16 v10, -0x1

    return-wide v10

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v5, v0, v3, v2}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->put(III)V

    const/high16 v7, -0x10000

    and-int/2addr v7, v0

    if-eqz v7, :cond_1

    invoke-static {v0}, Landroid/icu/text/StringSearch$CollationPCE;->isContinuation(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_7
    :goto_2
    invoke-virtual {v5}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->empty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->get()Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    move-result-object v6

    iget v7, v6, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->ce_:I

    invoke-direct {p0, v7}, Landroid/icu/text/StringSearch$CollationPCE;->processCE(I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    iget v10, v6, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->low_:I

    iget v11, v6, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->high_:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->put(JII)V

    goto :goto_2

    :cond_8
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {v7}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->get()Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    move-result-object v4

    if-eqz p1, :cond_9

    iget v7, v4, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->low_:I

    iput v7, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    iget v7, v4, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->high_:I

    iput v7, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    :cond_9
    iget-wide v10, v4, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->ce_:J

    return-wide v10
.end method
