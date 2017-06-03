.class Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalePatternMatcher"
.end annotation


# static fields
.field static pattern:Ljava/util/regex/Pattern;


# instance fields
.field private lang:Ljava/lang/String;

.field private level:Landroid/icu/util/LocaleMatcher$Level;

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "([a-z]{1,8}|\\*)(?:[_-]([A-Z][a-z]{3}|\\*))?(?:[_-]([A-Z]{2}|[0-9]{3}|\\*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    :goto_0
    iput-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v3, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v3, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v3, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    goto :goto_0

    :cond_5
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    iget-object v2, v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    iget-object v2, v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    iget-object v2, v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    iget-object v2, v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "*"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLevel()Landroid/icu/util/LocaleMatcher$Level;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "*"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    goto :goto_0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "*"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v2, v0

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method matches(Landroid/icu/util/ULocale;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v2

    :cond_4
    return v2

    :cond_5
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    sget-object v2, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    sget-object v2, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
