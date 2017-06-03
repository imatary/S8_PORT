.class Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;
.super Landroid/icu/text/LocaleDisplayNames;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/LocaleDisplayNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastResortLocaleDisplayNames"
.end annotation


# instance fields
.field private contexts:[Landroid/icu/text/DisplayContext;

.field private locale:Landroid/icu/util/ULocale;


# direct methods
.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, v1, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/icu/text/DisplayContext;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    return-void

    :cond_0
    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V

    return-void
.end method

.method private varargs constructor <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    array-length v0, p2

    new-array v0, v0, [Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    iget-object v0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    return-void
.end method


# virtual methods
.method public getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .locals 6

    sget-object v1, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    iget-object v3, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v5

    if-ne v5, p1, :cond_1

    move-object v1, v0

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 7

    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    iget-object v3, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v5

    sget-object v6, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/DisplayContext;->value()I

    move-result v5

    sget-object v6, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_1

    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public scriptDisplayName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
