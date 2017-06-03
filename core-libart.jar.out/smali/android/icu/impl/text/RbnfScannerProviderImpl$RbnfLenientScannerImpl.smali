.class Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;
.super Ljava/lang/Object;
.source "RbnfScannerProviderImpl.java"

# interfaces
.implements Landroid/icu/text/RbnfLenientScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/text/RbnfScannerProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RbnfLenientScannerImpl"
.end annotation


# instance fields
.field private final collator:Landroid/icu/text/RuleBasedCollator;


# direct methods
.method private constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/RuleBasedCollator;Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    return-void
.end method


# virtual methods
.method public allIgnorable(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x1

    iget-object v3, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v3, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v1

    :goto_0
    if-eq v1, v4, :cond_0

    invoke-static {v1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v1

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public findText(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 4

    const/4 v3, 0x0

    move v1, p3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    return-object v2
.end method

.method public findText2(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    iget-object v5, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v5, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v5, p2}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v4, p3}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v3

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v2

    :goto_0
    if-eq v2, v7, :cond_3

    :goto_1
    if-eq v3, v7, :cond_0

    invoke-static {v3}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v3

    goto :goto_1

    :cond_0
    :goto_2
    if-eq v2, v7, :cond_1

    invoke-static {v2}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v2

    goto :goto_2

    :cond_1
    if-ne v3, v7, :cond_2

    filled-new-array {v7, v8}, [I

    move-result-object v5

    return-object v5

    :cond_2
    if-ne v2, v7, :cond_4

    :cond_3
    if-ne v2, v7, :cond_7

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v1, v5, v8

    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v7, 0x1

    aput v6, v5, v7

    return-object v5

    :cond_4
    invoke-static {v3}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v5

    invoke-static {v2}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v1

    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v3

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v2

    goto :goto_0

    :cond_5
    if-eq v1, v7, :cond_6

    const/4 v1, -0x1

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->reset()V

    goto :goto_0

    :cond_6
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v3

    goto :goto_0

    :cond_7
    filled-new-array {v7, v8}, [I

    move-result-object v5

    return-object v5
.end method

.method public prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    iget-object v5, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v5, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v5, p2}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object v2

    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v1

    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    :goto_0
    if-eq v0, v7, :cond_2

    :goto_1
    invoke-static {v1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v5

    if-nez v5, :cond_0

    if-eq v1, v7, :cond_0

    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v1

    goto :goto_1

    :cond_0
    :goto_2
    invoke-static {v0}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v5

    if-nez v5, :cond_1

    if-eq v0, v7, :cond_1

    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    goto :goto_2

    :cond_1
    if-ne v0, v7, :cond_4

    :cond_2
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v3

    if-eq v1, v7, :cond_3

    add-int/lit8 v3, v3, -0x1

    :cond_3
    return v3

    :cond_4
    if-ne v1, v7, :cond_5

    return v8

    :cond_5
    invoke-static {v1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v5

    invoke-static {v0}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v6

    if-eq v5, v6, :cond_6

    return v8

    :cond_6
    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v1

    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    goto :goto_0
.end method
