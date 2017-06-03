.class public Landroid/icu/impl/UnicodeSetStringSpan;
.super Ljava/lang/Object;
.source "UnicodeSetStringSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x7f

.field static final ALL_CP_CONTAINED:S = 0xffs

.field public static final BACK:I = 0x10

.field public static final BACK_UTF16_CONTAINED:I = 0x12

.field public static final BACK_UTF16_NOT_CONTAINED:I = 0x11

.field public static final CONTAINED:I = 0x2

.field public static final FWD:I = 0x20

.field public static final FWD_UTF16_CONTAINED:I = 0x22

.field public static final FWD_UTF16_NOT_CONTAINED:I = 0x21

.field static final LONG_SPAN:S = 0xfes

.field public static final NOT_CONTAINED:I = 0x1

.field public static final WITH_COUNT:I = 0x40


# instance fields
.field private all:Z

.field private maxLength16:I

.field private offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

.field private someRelevant:Z

.field private spanLengths:[S

.field private spanNotSet:Landroid/icu/text/UnicodeSet;

.field private spanSet:Landroid/icu/text/UnicodeSet;

.field private strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/icu/impl/UnicodeSetStringSpan;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/UnicodeSetStringSpan;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    iput-object p2, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    iget v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    iput v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    iget-boolean v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    iput-boolean v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    iget-object v1, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    :goto_0
    new-instance v0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-direct {v0}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    return-void

    :cond_0
    iget-object v0, p1, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/UnicodeSet;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Landroid/icu/text/UnicodeSet;

    const/4 v9, 0x0

    const v10, 0x10ffff

    invoke-direct {v8, v9, v10}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    iput-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    iput-object p2, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    const/16 v8, 0x7f

    if-ne p3, v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8, p1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    iput-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    :cond_0
    new-instance v8, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-direct {v8}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;-><init>()V

    iput-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_4

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    sget-object v9, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v8, v6, v9}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5

    if-ge v5, v3, :cond_1

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    :cond_1
    iget v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    if-le v3, v8, :cond_2

    iput v3, p0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    if-nez v8, :cond_5

    and-int/lit8 v8, p3, 0x40

    if-nez v8, :cond_5

    return-void

    :cond_5
    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    :cond_6
    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v8, :cond_b

    mul-int/lit8 v0, v7, 0x2

    :goto_2
    new-array v8, v0, [S

    iput-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v8, :cond_c

    move v4, v7

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v7, :cond_10

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    sget-object v9, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v8, v6, v9}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5

    if-ge v5, v3, :cond_e

    and-int/lit8 v8, p3, 0x2

    if-eqz v8, :cond_d

    and-int/lit8 v8, p3, 0x20

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    invoke-static {v5}, Landroid/icu/impl/UnicodeSetStringSpan;->makeSpanLengthByte(I)S

    move-result v9

    aput-short v9, v8, v2

    :cond_7
    and-int/lit8 v8, p3, 0x10

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    sget-object v9, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v8, v6, v3, v9}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v8

    sub-int v5, v3, v8

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v9, v4, v2

    invoke-static {v5}, Landroid/icu/impl/UnicodeSetStringSpan;->makeSpanLengthByte(I)S

    move-result v10

    aput-short v10, v8, v9

    :cond_8
    :goto_5
    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_a

    and-int/lit8 v8, p3, 0x20

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/UnicodeSetStringSpan;->addToSpanNotSet(I)V

    :cond_9
    and-int/lit8 v8, p3, 0x10

    if-eqz v8, :cond_a

    invoke-virtual {v6, v3}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/UnicodeSetStringSpan;->addToSpanNotSet(I)V

    :cond_a
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    move v0, v7

    goto :goto_2

    :cond_c
    const/4 v4, 0x0

    goto :goto_3

    :cond_d
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    iget-object v9, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v10, v4, v2

    const/4 v11, 0x0

    aput-short v11, v9, v10

    const/4 v9, 0x0

    aput-short v9, v8, v2

    goto :goto_5

    :cond_e
    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v8, :cond_f

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    iget-object v9, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v10, v4, v2

    const/16 v11, 0xff

    aput-short v11, v9, v10

    const/16 v9, 0xff

    aput-short v9, v8, v2

    goto :goto_6

    :cond_f
    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    const/16 v9, 0xff

    aput-short v9, v8, v2

    goto :goto_6

    :cond_10
    iget-boolean v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    :cond_11
    return-void
.end method

.method private addToSpanNotSet(I)V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method static makeSpanLengthByte(I)S
    .locals 1

    const/16 v0, 0xfe

    if-ge p0, v0, :cond_0

    int-to-short v0, p0

    :cond_0
    return v0
.end method

.method private static matches16(Ljava/lang/CharSequence;ILjava/lang/String;I)Z
    .locals 5

    const/4 v4, 0x0

    add-int v0, p1, p3

    move v1, p3

    :goto_0
    add-int/lit8 p3, v1, -0x1

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    move v1, p3

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method static matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p3, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16(Ljava/lang/CharSequence;ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p1, :cond_1

    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int v1, p1, p4

    if-ge v1, p2, :cond_2

    add-int v1, p1, p4

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int v1, p1, p4

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized spanContainedAndCount(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    iget v11, p0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    invoke-virtual {v10, v11}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v6, p2

    sub-int v7, v3, p2

    const/4 v0, 0x0

    :goto_0
    if-eqz v7, :cond_5

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v10, p1, v6, v7}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v1, v11}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffsetAndCount(II)V

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_3

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v7, :cond_1

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v4, v11}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->hasCountAtOffset(II)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p1, v6, v3, v8, v4}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v4, v11}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffsetAndCount(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_3
    :try_start_1
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v10}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    iput v0, p3, Landroid/icu/util/OutputInt;->value:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v6

    :cond_4
    :try_start_2
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v10, p3}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Landroid/icu/util/OutputInt;)I

    move-result v5

    iget v0, p3, Landroid/icu/util/OutputInt;->value:I

    add-int/2addr v6, v5

    sub-int/2addr v7, v5

    goto :goto_0

    :cond_5
    iput v0, p3, Landroid/icu/util/OutputInt;->value:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v6
.end method

.method private spanNot(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I
    .locals 12

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v5, p2

    sub-int v6, v3, p2

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v0, 0x0

    :cond_0
    if-nez p3, :cond_1

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    sget-object v11, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v10, p1, v5, v11}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v7

    :goto_0
    if-ne v7, v3, :cond_2

    return v3

    :cond_1
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    sget-object v11, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v10, p1, v5, v11, p3}, Landroid/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v7

    iget v10, p3, Landroid/icu/util/OutputInt;->value:I

    add-int/2addr v0, v10

    iput v0, p3, Landroid/icu/util/OutputInt;->value:I

    goto :goto_0

    :cond_2
    move v5, v7

    sub-int v6, v3, v7

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v10, p1, v5, v6}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v1

    if-lez v1, :cond_3

    return v5

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_6

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v10, v10, v2

    const/16 v11, 0xff

    if-ne v10, v11, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_4

    invoke-static {p1, v5, v3, v8, v4}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    return v5

    :cond_6
    sub-int/2addr v5, v1

    add-int/2addr v6, v1

    add-int/lit8 v0, v0, 0x1

    if-nez v6, :cond_0

    if-eqz p3, :cond_7

    iput v0, p3, Landroid/icu/util/OutputInt;->value:I

    :cond_7
    return v3
.end method

.method private spanNotBack(Ljava/lang/CharSequence;I)I
    .locals 9

    const/4 v8, 0x0

    move v3, p2

    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_0
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotSet:Landroid/icu/text/UnicodeSet;

    sget-object v7, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v6, p1, v3, v7}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v3

    if-nez v3, :cond_1

    return v8

    :cond_1
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v6, p1, v3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOneBack(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I

    move-result v0

    if-lez v0, :cond_2

    return v3

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_5

    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v6, v6, v1

    const/16 v7, 0xff

    if-ne v6, v7, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_3

    sub-int v6, v3, v2

    invoke-static {p1, v6, p2, v4, v2}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    return v3

    :cond_5
    add-int/2addr v3, v0

    if-nez v3, :cond_0

    return v8
.end method

.method static spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I
    .locals 5

    const/4 v3, 0x2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v4, 0xd800

    if-lt v0, v4, :cond_1

    const v4, 0xdbff

    if-gt v0, v4, :cond_1

    if-lt p3, v3, :cond_1

    add-int/lit8 v4, p2, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method static spanOneBack(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I
    .locals 5

    const/4 v3, 0x2

    add-int/lit8 v4, p2, -0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v4, 0xdc00

    if-lt v0, v4, :cond_1

    const v4, 0xdfff

    if-gt v0, v4, :cond_1

    if-lt p2, v3, :cond_1

    add-int/lit8 v4, p2, -0x2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private declared-synchronized spanWithStrings(Ljava/lang/CharSequence;IILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 19

    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    sget-object v17, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move/from16 v12, p3

    sub-int v13, v6, p3

    sub-int v14, p3, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    :goto_0
    sget-object v17, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/4 v3, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v3, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    move-object/from16 v17, v0

    aget-short v11, v17, v3

    const/16 v17, 0xff

    move/from16 v0, v17

    if-ne v11, v0, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v17, 0xfe

    move/from16 v0, v17

    if-lt v11, v0, :cond_3

    move v11, v7

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v7, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v11

    :cond_3
    if-le v11, v14, :cond_4

    move v11, v14

    :cond_4
    sub-int v4, v7, v11

    :goto_2
    if-gt v4, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->containsOffset(I)Z

    move-result v17

    if-nez v17, :cond_6

    sub-int v17, v12, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v6, v15, v7}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    if-eqz v17, :cond_6

    if-ne v4, v13, :cond_5

    monitor-exit p0

    return v6

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffset(I)V

    :cond_6
    if-eqz v11, :cond_1

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v3, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    move-object/from16 v17, v0

    aget-short v11, v17, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v17, 0xfe

    move/from16 v0, v17

    if-lt v11, v0, :cond_8

    move v11, v7

    :cond_8
    if-le v11, v14, :cond_9

    move v11, v14

    :cond_9
    sub-int v4, v7, v11

    :goto_4
    if-gt v4, v13, :cond_a

    if-ge v11, v9, :cond_b

    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    if-gt v11, v9, :cond_c

    if-le v4, v8, :cond_d

    :cond_c
    sub-int v17, v12, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v6, v15, v7}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    if-eqz v17, :cond_d

    move v8, v4

    move v9, v11

    goto :goto_5

    :cond_d
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_e
    if-nez v8, :cond_f

    if-eqz v9, :cond_11

    :cond_f
    add-int/2addr v12, v8

    sub-int/2addr v13, v8

    if-nez v13, :cond_10

    monitor-exit p0

    return v6

    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_11
    if-nez v14, :cond_12

    if-nez v12, :cond_13

    :cond_12
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    if-eqz v17, :cond_18

    monitor-exit p0

    return v12

    :cond_13
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v17, v0

    sget-object v18, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v12, v2}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result p3

    sub-int v14, p3, v12

    if-eq v14, v13, :cond_14

    if-nez v14, :cond_15

    :cond_14
    monitor-exit p0

    return p3

    :cond_15
    add-int/2addr v12, v14

    sub-int/2addr v13, v14

    goto/16 :goto_0

    :cond_16
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v12, v13}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v14

    if-lez v14, :cond_18

    if-ne v14, v13, :cond_17

    monitor-exit p0

    return v6

    :cond_17
    add-int/2addr v12, v14

    sub-int/2addr v13, v14

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->shift(I)V

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Landroid/icu/util/OutputInt;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    add-int/2addr v12, v10

    sub-int/2addr v13, v10

    const/4 v14, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public needsStringSpanUTF16()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    return v0
.end method

.method public span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 3

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/icu/impl/UnicodeSetStringSpan;->spanNot(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    sget-object v2, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v1, p1, p2, v2}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanWithStrings(Ljava/lang/CharSequence;IILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    return v1
.end method

.method public spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .locals 11

    sget-object v10, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v10, :cond_0

    invoke-direct {p0, p1, p2, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanNot(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I

    move-result v10

    return v10

    :cond_0
    sget-object v10, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v10, :cond_1

    invoke-direct {p0, p1, p2, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanContainedAndCount(Ljava/lang/CharSequence;ILandroid/icu/util/OutputInt;)I

    move-result v10

    return v10

    :cond_1
    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v6, p2

    sub-int v7, v3, p2

    const/4 v0, 0x0

    :goto_0
    if-eqz v7, :cond_6

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v10, p1, v6, v7}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOne(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v1

    if-lez v1, :cond_3

    move v5, v1

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v9, :cond_4

    iget-object v10, p0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_2

    if-gt v4, v7, :cond_2

    invoke-static {p1, v6, v3, v8, v4}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    move v5, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    iput v0, p4, Landroid/icu/util/OutputInt;->value:I

    return v6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v6, v5

    sub-int/2addr v7, v5

    goto :goto_0

    :cond_6
    iput v0, p4, Landroid/icu/util/OutputInt;->value:I

    return v6
.end method

.method public declared-synchronized spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 20

    monitor-enter p0

    :try_start_0
    sget-object v18, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-direct/range {p0 .. p2}, Landroid/icu/impl/UnicodeSetStringSpan;->spanNotBack(Ljava/lang/CharSequence;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    monitor-exit p0

    return v18

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v18, v0

    sget-object v19, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-nez v13, :cond_1

    const/16 v18, 0x0

    monitor-exit p0

    return v18

    :cond_1
    sub-int v15, p2, v13

    const/4 v6, 0x0

    :try_start_2
    sget-object v18, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Landroid/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->all:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move/from16 v14, v17

    :cond_3
    :goto_0
    sget-object v18, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v5, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    move-object/from16 v18, v0

    add-int v19, v14, v5

    aget-short v12, v18, v19

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v12, v0, :cond_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-lt v12, v0, :cond_6

    move v12, v8

    const/4 v7, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v7

    sub-int v12, v8, v7

    :cond_6
    if-le v12, v15, :cond_7

    move v12, v15

    :cond_7
    sub-int v4, v8, v12

    :goto_2
    if-gt v4, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->containsOffset(I)Z

    move-result v18

    if-nez v18, :cond_9

    sub-int v18, v13, v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3, v8}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v18

    if-eqz v18, :cond_9

    if-ne v4, v13, :cond_8

    const/16 v18, 0x0

    monitor-exit p0

    return v18

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffset(I)V

    :cond_9
    if-eqz v12, :cond_4

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v5, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    move-object/from16 v18, v0

    add-int v19, v14, v5

    aget-short v12, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-lt v12, v0, :cond_b

    move v12, v8

    :cond_b
    if-le v12, v15, :cond_c

    move v12, v15

    :cond_c
    sub-int v4, v8, v12

    :goto_4
    if-gt v4, v13, :cond_d

    if-ge v12, v10, :cond_e

    :cond_d
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    if-gt v12, v10, :cond_f

    if-le v4, v9, :cond_10

    :cond_f
    sub-int v18, v13, v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3, v8}, Landroid/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v18

    if-eqz v18, :cond_10

    move v9, v4

    move v10, v12

    goto :goto_5

    :cond_10
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_11
    if-nez v9, :cond_12

    if-eqz v10, :cond_14

    :cond_12
    sub-int/2addr v13, v9

    if-nez v13, :cond_13

    const/16 v18, 0x0

    monitor-exit p0

    return v18

    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_14
    if-nez v15, :cond_15

    move/from16 v0, p2

    if-ne v13, v0, :cond_16

    :cond_15
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v18

    if-eqz v18, :cond_1a

    monitor-exit p0

    return v13

    :cond_16
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_18

    move v11, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v18, v0

    sget-object v19, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v13

    sub-int v15, v11, v13

    if-eqz v13, :cond_17

    if-nez v15, :cond_3

    :cond_17
    monitor-exit p0

    return v13

    :cond_18
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->spanSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13}, Landroid/icu/impl/UnicodeSetStringSpan;->spanOneBack(Landroid/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v15

    if-lez v15, :cond_1a

    if-ne v15, v13, :cond_19

    const/16 v18, 0x0

    monitor-exit p0

    return v18

    :cond_19
    sub-int/2addr v13, v15

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->shift(I)V

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UnicodeSetStringSpan;->offsets:Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Landroid/icu/util/OutputInt;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v18

    sub-int v13, v13, v18

    const/4 v15, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18
.end method
