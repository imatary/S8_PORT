.class public final Landroid/icu/text/ListFormatter;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/ListFormatter$Cache;,
        Landroid/icu/text/ListFormatter$FormattedListBuilder;,
        Landroid/icu/text/ListFormatter$Style;
    }
.end annotation


# static fields
.field static cache:Landroid/icu/text/ListFormatter$Cache;


# instance fields
.field private final end:Ljava/lang/String;

.field private final locale:Landroid/icu/util/ULocale;

.field private final middle:Ljava/lang/String;

.field private final start:Ljava/lang/String;

.field private final two:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/ListFormatter$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/ListFormatter$Cache;-><init>(Landroid/icu/text/ListFormatter$Cache;)V

    sput-object v0, Landroid/icu/text/ListFormatter;->cache:Landroid/icu/text/ListFormatter$Cache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/ListFormatter;->two:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/ListFormatter;->start:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/text/ListFormatter;->middle:Ljava/lang/String;

    iput-object p4, p0, Landroid/icu/text/ListFormatter;->end:Ljava/lang/String;

    iput-object p5, p0, Landroid/icu/text/ListFormatter;->locale:Landroid/icu/util/ULocale;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private static compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0, v0}, Landroid/icu/impl/SimplePatternFormatter;->compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/icu/text/ListFormatter;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ListFormatter;
    .locals 1

    sget-object v0, Landroid/icu/text/ListFormatter$Style;->STANDARD:Landroid/icu/text/ListFormatter$Style;

    invoke-static {p0, v0}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/icu/text/ListFormatter;->cache:Landroid/icu/text/ListFormatter$Cache;

    invoke-virtual {p1}, Landroid/icu/text/ListFormatter$Style;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/icu/text/ListFormatter$Cache;->get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Landroid/icu/text/ListFormatter$Style;->STANDARD:Landroid/icu/text/ListFormatter$Style;

    invoke-static {v0, v1}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method format(Ljava/util/Collection;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;I)",
            "Landroid/icu/text/ListFormatter$FormattedListBuilder;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez p2, :cond_3

    move v6, v4

    :goto_0
    invoke-direct {v0, v7, v6}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    iget-object v7, p0, Landroid/icu/text/ListFormatter;->start:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-ne p2, v4, :cond_4

    move v6, v4

    :goto_1
    invoke-virtual {v0, v7, v8, v6}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    const/4 v2, 0x2

    :goto_2
    add-int/lit8 v6, v1, -0x1

    if-ge v2, v6, :cond_6

    iget-object v7, p0, Landroid/icu/text/ListFormatter;->middle:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-ne p2, v2, :cond_5

    move v6, v4

    :goto_3
    invoke-virtual {v0, v7, v8, v6}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_0
    new-instance v4, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    const-string/jumbo v6, ""

    invoke-direct {v4, v6, v5}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    return-object v4

    :pswitch_1
    new-instance v6, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez p2, :cond_0

    :goto_4
    invoke-direct {v6, v7, v4}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    return-object v6

    :cond_0
    move v4, v5

    goto :goto_4

    :pswitch_2
    new-instance v7, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-nez p2, :cond_1

    move v6, v4

    :goto_5
    invoke-direct {v7, v8, v6}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    iget-object v6, p0, Landroid/icu/text/ListFormatter;->two:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-ne p2, v4, :cond_2

    :goto_6
    invoke-virtual {v7, v6, v8, v4}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v4

    return-object v4

    :cond_1
    move v6, v5

    goto :goto_5

    :cond_2
    move v4, v5

    goto :goto_6

    :cond_3
    move v6, v5

    goto :goto_0

    :cond_4
    move v6, v5

    goto :goto_1

    :cond_5
    move v6, v5

    goto :goto_3

    :cond_6
    iget-object v6, p0, Landroid/icu/text/ListFormatter;->end:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v1, -0x1

    if-ne p2, v8, :cond_7

    :goto_7
    invoke-virtual {v0, v6, v7, v4}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v4

    return-object v4

    :cond_7
    move v4, v5

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public format(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs format([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/ListFormatter;->locale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public getPatternForNumItems(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    if-gtz p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "count must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    const-string/jumbo v2, "{%d}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
