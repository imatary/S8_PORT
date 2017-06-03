.class public Landroid/icu/text/IdentifierInfo;
.super Ljava/lang/Object;
.source "IdentifierInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/IdentifierInfo$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ASCII:Landroid/icu/text/UnicodeSet;

.field public static final BITSET_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CHINESE:Ljava/util/BitSet;

.field private static final CONFUSABLE_WITH_LATIN:Ljava/util/BitSet;

.field private static final JAPANESE:Ljava/util/BitSet;

.field private static final KOREAN:Ljava/util/BitSet;


# instance fields
.field private final commonAmongAlternates:Ljava/util/BitSet;

.field private identifier:Ljava/lang/String;

.field private final identifierProfile:Landroid/icu/text/UnicodeSet;

.field private final numerics:Landroid/icu/text/UnicodeSet;

.field private final requiredScripts:Ljava/util/BitSet;

.field private final scriptSetSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x19

    const/16 v3, 0x11

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const/16 v2, 0x7f

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/IdentifierInfo;->ASCII:Landroid/icu/text/UnicodeSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/16 v1, 0x14

    const/16 v2, 0x16

    filled-new-array {v4, v3, v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/text/IdentifierInfo;->set(Ljava/util/BitSet;[I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/IdentifierInfo;->JAPANESE:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x5

    filled-new-array {v4, v3, v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/text/IdentifierInfo;->set(Ljava/util/BitSet;[I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/IdentifierInfo;->CHINESE:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/16 v1, 0x12

    filled-new-array {v4, v3, v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/text/IdentifierInfo;->set(Ljava/util/BitSet;[I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/IdentifierInfo;->KOREAN:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/16 v1, 0x8

    const/16 v2, 0xe

    const/4 v3, 0x6

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/text/IdentifierInfo;->set(Ljava/util/BitSet;[I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/IdentifierInfo;->CONFUSABLE_WITH_LATIN:Ljava/util/BitSet;

    new-instance v0, Landroid/icu/text/IdentifierInfo$1;

    invoke-direct {v0}, Landroid/icu/text/IdentifierInfo$1;-><init>()V

    sput-object v0, Landroid/icu/text/IdentifierInfo;->BITSET_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/IdentifierInfo;->numerics:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    iput-object v0, p0, Landroid/icu/text/IdentifierInfo;->identifierProfile:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method private clear()Landroid/icu/text/IdentifierInfo;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->numerics:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    return-object p0
.end method

.method public static final contains(Ljava/util/BitSet;Ljava/util/BitSet;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private containsWithAlternates(Ljava/util/BitSet;Ljava/util/BitSet;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1, p2}, Landroid/icu/text/IdentifierInfo;->contains(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static displayAlternates(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/BitSet;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    return-object v4

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/TreeSet;

    sget-object v4, Landroid/icu/text/IdentifierInfo;->BITSET_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v3, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v0}, Landroid/icu/text/IdentifierInfo;->displayScripts(Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static displayScripts(Ljava/util/BitSet;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v0}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseAlternates(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\\s*;\\s*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Landroid/icu/text/IdentifierInfo;->parseScripts(Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static parseScripts(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ",?\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static final varargs set(Ljava/util/BitSet;[I)Ljava/util/BitSet;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getAlternates()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getCommonAmongAlternates()Ljava/util/BitSet;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifierProfile()Landroid/icu/text/UnicodeSet;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/icu/text/UnicodeSet;

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->identifierProfile:Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public getNumerics()Landroid/icu/text/UnicodeSet;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/icu/text/UnicodeSet;

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->numerics:Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public getRestrictionLevel()Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->identifierProfile:Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/text/IdentifierInfo;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/IdentifierInfo;->getNumerics()Landroid/icu/text/UnicodeSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    :cond_0
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v1

    :cond_1
    sget-object v2, Landroid/icu/text/IdentifierInfo;->ASCII:Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/text/IdentifierInfo;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v1

    :cond_2
    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    :cond_3
    add-int v0, v2, v1

    if-ge v0, v4, :cond_4

    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v1

    :cond_4
    sget-object v1, Landroid/icu/text/IdentifierInfo;->JAPANESE:Ljava/util/BitSet;

    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    invoke-direct {p0, v1, v2}, Landroid/icu/text/IdentifierInfo;->containsWithAlternates(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Landroid/icu/text/IdentifierInfo;->CHINESE:Ljava/util/BitSet;

    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    invoke-direct {p0, v1, v2}, Landroid/icu/text/IdentifierInfo;->containsWithAlternates(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Landroid/icu/text/IdentifierInfo;->KOREAN:Ljava/util/BitSet;

    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    invoke-direct {p0, v1, v2}, Landroid/icu/text/IdentifierInfo;->containsWithAlternates(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v1

    :cond_6
    if-ne v0, v4, :cond_7

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    sget-object v2, Landroid/icu/text/IdentifierInfo;->CONFUSABLE_WITH_LATIN:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v1

    :cond_8
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v1
.end method

.method public getScriptCount()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    return v0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getScripts()Ljava/util/BitSet;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)Landroid/icu/text/IdentifierInfo;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    iput-object p1, p0, Landroid/icu/text/IdentifierInfo;->identifier:Ljava/lang/String;

    invoke-direct {p0}, Landroid/icu/text/IdentifierInfo;->clear()Landroid/icu/text/IdentifierInfo;

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->numerics:Landroid/icu/text/UnicodeSet;

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getNumericValue(I)I

    move-result v8

    sub-int v8, v0, v8

    invoke-virtual {v7, v8}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_0
    invoke-static {v0, v6}, Landroid/icu/lang/UScript;->getScriptExtensions(ILjava/util/BitSet;)I

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->clear(I)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    :cond_1
    :goto_1
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v1, v7

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    const/16 v8, 0xa7

    invoke-virtual {v7, v9, v8}, Ljava/util/BitSet;->set(II)V

    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    invoke-virtual {v7, v3}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    invoke-virtual {v7, v3}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    if-eq v3, v4, :cond_5

    invoke-static {v3, v4}, Landroid/icu/text/IdentifierInfo;->contains(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->clear()V

    :cond_7
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIdentifierProfile(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/IdentifierInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->identifierProfile:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->identifierProfile:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/text/IdentifierInfo;->getRestrictionLevel()Landroid/icu/text/SpoofChecker$RestrictionLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    invoke-static {v1}, Landroid/icu/text/IdentifierInfo;->displayScripts(Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    invoke-static {v1}, Landroid/icu/text/IdentifierInfo;->displayAlternates(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->numerics:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
