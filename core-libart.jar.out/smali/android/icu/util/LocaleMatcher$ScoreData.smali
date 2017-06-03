.class Landroid/icu/util/LocaleMatcher$ScoreData;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"

# interfaces
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScoreData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/util/LocaleMatcher$ScoreData;",
        ">;"
    }
.end annotation


# static fields
.field private static final maxUnequal_changeD_sameS:D = 0.5

.field private static final maxUnequal_changeEqual:D = 0.75


# instance fields
.field private volatile frozen:Z

.field final level:Landroid/icu/util/LocaleMatcher$Level;

.field scores:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/icu/impl/Row$R3",
            "<",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/icu/util/LocaleMatcher$Level;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z

    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    return-void
.end method

.method private getRawScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 4

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Row$R3;

    invoke-virtual {v0}, Landroid/icu/impl/Row;->get0()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    invoke-virtual {v2, p1}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->matches(Landroid/icu/util/ULocale;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/icu/impl/Row;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    invoke-virtual {v2, p2}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->matches(Landroid/icu/util/ULocale;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/icu/impl/Row;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    :cond_1
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    iget-wide v2, v2, Landroid/icu/util/LocaleMatcher$Level;->worst:D

    return-wide v2
.end method


# virtual methods
.method addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/impl/Row$R3",
            "<",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/icu/util/ICUException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trying to add duplicate data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/LocaleMatcher$ScoreData;

    iget-object v2, v1, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashSet;

    iput-object v2, v1, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Landroid/icu/util/LocaleMatcher$ScoreData;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingLanguages()Landroid/icu/impl/Relation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Relation",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const-class v6, Ljava/util/HashSet;

    invoke-static {v5, v6}, Landroid/icu/impl/Relation;->of(Ljava/util/Map;Ljava/lang/Class;)Landroid/icu/impl/Relation;

    move-result-object v1

    iget-object v5, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/Row$R3;

    invoke-virtual {v2}, Landroid/icu/impl/Row;->get0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    invoke-virtual {v2}, Landroid/icu/impl/Row;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    invoke-static {v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->-get0(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->-get0(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->-get0(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->-get0(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/icu/impl/Relation;->freeze()Landroid/icu/impl/Relation;

    return-object v1
.end method

.method getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D
    .locals 3

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p4}, Landroid/icu/util/LocaleMatcher$ScoreData;->getRawScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Row$R3;

    const-string/jumbo v3, "\n\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
