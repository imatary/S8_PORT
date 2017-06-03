.class public Landroid/icu/util/LocalePriorityList;
.super Ljava/lang/Object;
.source "LocalePriorityList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/LocalePriorityList$1;,
        Landroid/icu/util/LocalePriorityList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field private static final D0:D

.field private static final D1:Ljava/lang/Double;

.field private static final languageSplitter:Ljava/util/regex/Pattern;

.field private static myDescendingDouble:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final weightSplitter:Ljava/util/regex/Pattern;


# instance fields
.field private final languagesAndWeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Double;
    .locals 1

    sget-object v0, Landroid/icu/util/LocalePriorityList;->D1:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Landroid/icu/util/LocalePriorityList;->languageSplitter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -get2(Landroid/icu/util/LocalePriorityList;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Landroid/icu/util/LocalePriorityList;->myDescendingDouble:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get4()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Landroid/icu/util/LocalePriorityList;->weightSplitter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocalePriorityList;->D1:Ljava/lang/Double;

    const-string/jumbo v0, "\\s*,\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocalePriorityList;->languageSplitter:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\\s*(\\S*)\\s*;\\s*q\\s*=\\s*(\\S*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocalePriorityList;->weightSplitter:Ljava/util/regex/Pattern;

    new-instance v0, Landroid/icu/util/LocalePriorityList$1;

    invoke-direct {v0}, Landroid/icu/util/LocalePriorityList$1;-><init>()V

    sput-object v0, Landroid/icu/util/LocalePriorityList;->myDescendingDouble:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Landroid/icu/util/LocalePriorityList;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/LocalePriorityList;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static add(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 2

    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList$Builder;)V

    invoke-virtual {v0, p0}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 3

    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList$Builder;)V

    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 2

    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList$Builder;)V

    invoke-virtual {v0, p0}, Landroid/icu/util/LocalePriorityList$Builder;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static varargs add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 2

    new-instance v0, Landroid/icu/util/LocalePriorityList$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;-><init>(Landroid/icu/util/LocalePriorityList$Builder;)V

    invoke-virtual {v0, p0}, Landroid/icu/util/LocalePriorityList$Builder;->add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/icu/util/LocalePriorityList;

    move-object v2, v0

    iget-object v3, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    iget-object v4, v2, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    return v5
.end method

.method public getWeight(Landroid/icu/util/ULocale;)Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/util/LocalePriorityList;->languagesAndWeights:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sget-object v3, Landroid/icu/util/LocalePriorityList;->D1:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    const-string/jumbo v3, ";q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
