.class Landroid/icu/lang/UCharacterNameIterator;
.super Ljava/lang/Object;
.source "UCharacterNameIterator.java"

# interfaces
.implements Landroid/icu/util/ValueIterator;


# static fields
.field private static GROUP_LENGTHS_:[C

.field private static GROUP_OFFSETS_:[C


# instance fields
.field private m_algorithmIndex_:I

.field private m_choice_:I

.field private m_current_:I

.field private m_groupIndex_:I

.field private m_limit_:I

.field private m_name_:Landroid/icu/impl/UCharacterName;

.field private m_start_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x21

    new-array v0, v1, [C

    sput-object v0, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    new-array v0, v1, [C

    sput-object v0, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/UCharacterName;I)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "UCharacterName name argument cannot be null. Missing unames.icu?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iput p2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    const/high16 v0, 0x110000

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return-void
.end method

.method private iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z
    .locals 4

    const/4 v3, 0x0

    :goto_0
    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v1, p2, :cond_1

    iget-object v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/UCharacterName;->getExtendedOr10Name(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iput v1, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    iput-object v0, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    return v3

    :cond_0
    iget v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    if-gez v3, :cond_0

    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v3, v4}, Landroid/icu/impl/UCharacterName;->getGroup(I)I

    move-result v3

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    :cond_0
    :goto_0
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    iget-object v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v4, v4, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    if-ge v3, v4, :cond_7

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v3, p2, :cond_7

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-static {v3}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v2

    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    invoke-virtual {v3, v4}, Landroid/icu/impl/UCharacterName;->getGroupMSB(I)I

    move-result v1

    if-ne v2, v1, :cond_3

    add-int/lit8 v3, p2, -0x1

    invoke-static {v3}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/icu/lang/UCharacterNameIterator;->iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v3

    return v3

    :cond_1
    invoke-static {v1}, Landroid/icu/impl/UCharacterName;->getGroupLimit(I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/icu/lang/UCharacterNameIterator;->iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v3

    if-nez v3, :cond_2

    return v5

    :cond_2
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    goto :goto_0

    :cond_3
    if-le v2, v1, :cond_4

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    goto :goto_0

    :cond_4
    invoke-static {v1}, Landroid/icu/impl/UCharacterName;->getGroupMin(I)I

    move-result v0

    if-le v0, p2, :cond_5

    move v0, p2

    :cond_5
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    invoke-direct {p0, p1, v0}, Landroid/icu/lang/UCharacterNameIterator;->iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v3

    if-nez v3, :cond_6

    return v5

    :cond_6
    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    return v3
.end method

.method private iterateSingleGroup(Landroid/icu/util/ValueIterator$Element;I)Z
    .locals 10

    const/4 v9, 0x0

    sget-object v4, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    monitor-enter v4

    :try_start_0
    sget-object v5, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v6, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    sget-object v7, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    sget-object v8, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    invoke-virtual {v3, v6, v7, v8}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v0

    :goto_0
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v3, p2, :cond_3

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-static {v3}, Landroid/icu/impl/UCharacterName;->getGroupOffset(I)I

    move-result v2

    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    sget-object v6, Landroid/icu/lang/UCharacterNameIterator;->GROUP_OFFSETS_:[C

    aget-char v6, v6, v2

    add-int/2addr v6, v0

    sget-object v7, Landroid/icu/lang/UCharacterNameIterator;->GROUP_LENGTHS_:[C

    aget-char v7, v7, v2

    iget v8, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    invoke-virtual {v3, v6, v7, v8}, Landroid/icu/impl/UCharacterName;->getGroupName(III)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v6, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v3, v6}, Landroid/icu/impl/UCharacterName;->getExtendedName(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iput v3, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    iput-object v1, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    return v9

    :cond_2
    :try_start_3
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_3
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v4

    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public next(Landroid/icu/util/ValueIterator$Element;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    if-lt v3, v4, :cond_0

    return v5

    :cond_0
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    if-ne v3, v7, :cond_7

    :cond_1
    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    invoke-virtual {v3}, Landroid/icu/impl/UCharacterName;->getAlgorithmLength()I

    move-result v1

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v3, v1, :cond_7

    :goto_0
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v3, v1, :cond_3

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    invoke-virtual {v3, v4}, Landroid/icu/impl/UCharacterName;->getAlgorithmEnd(I)I

    move-result v3

    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v3, v4, :cond_3

    :cond_2
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    if-ge v3, v1, :cond_7

    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    invoke-virtual {v3, v4}, Landroid/icu/impl/UCharacterName;->getAlgorithmStart(I)I

    move-result v2

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    if-ge v3, v2, :cond_5

    move v0, v2

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    if-gt v3, v2, :cond_4

    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    :cond_4
    invoke-direct {p0, p1, v0}, Landroid/icu/lang/UCharacterNameIterator;->iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return v6

    :cond_5
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    if-lt v3, v4, :cond_6

    return v5

    :cond_6
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iput v3, p1, Landroid/icu/util/ValueIterator$Element;->integer:I

    iget-object v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_name_:Landroid/icu/impl/UCharacterName;

    iget v4, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    iget v5, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    invoke-virtual {v3, v4, v5}, Landroid/icu/impl/UCharacterName;->getAlgorithmName(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/icu/util/ValueIterator$Element;->value:Ljava/lang/Object;

    const/4 v3, -0x1

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return v6

    :cond_7
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    invoke-direct {p0, p1, v3}, Landroid/icu/lang/UCharacterNameIterator;->iterateGroup(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return v6

    :cond_8
    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_choice_:I

    if-ne v3, v7, :cond_9

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    invoke-direct {p0, p1, v3}, Landroid/icu/lang/UCharacterNameIterator;->iterateExtended(Landroid/icu/util/ValueIterator$Element;I)Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return v6

    :cond_9
    return v5
.end method

.method public reset()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    iput v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_groupIndex_:I

    iput v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_algorithmIndex_:I

    return-void
.end method

.method public setRange(II)V
    .locals 2

    const/high16 v1, 0x110000

    const/4 v0, 0x0

    if-lt p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start or limit has to be valid Unicode codepoints and start < limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    :goto_0
    if-le p2, v1, :cond_2

    iput v1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    :goto_1
    iget v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    iput v0, p0, Landroid/icu/lang/UCharacterNameIterator;->m_current_:I

    return-void

    :cond_1
    iput p1, p0, Landroid/icu/lang/UCharacterNameIterator;->m_start_:I

    goto :goto_0

    :cond_2
    iput p2, p0, Landroid/icu/lang/UCharacterNameIterator;->m_limit_:I

    goto :goto_1
.end method
