.class public Landroid/icu/text/SpoofChecker$Builder;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;,
        Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;
    }
.end annotation


# instance fields
.field final fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

.field final fAllowedLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field fChecks:I

.field private fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    sget-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/SpoofChecker;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-get2(Landroid/icu/text/SpoofChecker;)I

    move-result v0

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-get4(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$SpoofData;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-get0(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-get1(Landroid/icu/text/SpoofChecker;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->-get3(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$RestrictionLevel;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-void
.end method

.method private addScriptChars(Landroid/icu/util/ULocale;Landroid/icu/text/UnicodeSet;)V
    .locals 5

    invoke-static {p1}, Landroid/icu/lang/UScript;->getCode(Landroid/icu/util/ULocale;)[I

    move-result-object v1

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget v3, v1, v0

    const/16 v4, 0x100a

    invoke-virtual {v2, v4, v3}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/icu/text/SpoofChecker;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/icu/text/SpoofChecker$SpoofData;->getDefault()Landroid/icu/text/SpoofChecker$SpoofData;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    :cond_0
    new-instance v0, Landroid/icu/text/SpoofChecker;

    invoke-direct {v0, v2}, Landroid/icu/text/SpoofChecker;-><init>(Landroid/icu/text/SpoofChecker;)V

    iget v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-set2(Landroid/icu/text/SpoofChecker;I)I

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-set4(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$SpoofData;)Landroid/icu/text/SpoofChecker$SpoofData;

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UnicodeSet;

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-set0(Landroid/icu/text/SpoofChecker;Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    invoke-static {v0}, Landroid/icu/text/SpoofChecker;->-get0(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-set1(Landroid/icu/text/SpoofChecker;Ljava/util/Set;)Ljava/util/Set;

    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->-set3(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$RestrictionLevel;)Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v0
.end method

.method public setAllowedChars(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0
.end method

.method public setAllowedJavaLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;)",
            "Landroid/icu/text/SpoofChecker$Builder;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/icu/text/SpoofChecker$Builder;->setAllowedLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;

    move-result-object v3

    return-object v3
.end method

.method public setAllowedLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/text/SpoofChecker$Builder;"
        }
    .end annotation

    const/16 v4, 0x100a

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0, v0, v3}, Landroid/icu/text/SpoofChecker$Builder;->addScriptChars(Landroid/icu/util/ULocale;Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    const v4, 0x10ffff

    invoke-virtual {v3, v5, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    iget v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0

    :cond_1
    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    iget-object v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0
.end method

.method public setChecks(I)Landroid/icu/text/SpoofChecker$Builder;
    .locals 2

    and-int/lit8 v0, p1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad Spoof Checks value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0
.end method

.method public setData(Ljava/io/Reader;Ljava/io/Reader;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$SpoofData;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-static {p1, v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->buildConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V

    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-static {p2, v0}, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->buildWSConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V

    return-object p0
.end method

.method public setRestrictionLevel(Landroid/icu/text/SpoofChecker$RestrictionLevel;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    iget v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0
.end method
