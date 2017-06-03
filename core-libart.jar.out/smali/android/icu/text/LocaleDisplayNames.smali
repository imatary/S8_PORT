.class public abstract Landroid/icu/text/LocaleDisplayNames;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/LocaleDisplayNames$DialectHandling;,
        Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;,
        Landroid/icu/text/LocaleDisplayNames$UiListItem;
    }
.end annotation


# static fields
.field private static final FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

.field private static final FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string/jumbo v6, "android.icu.text.LocaleDisplayNames.impl"

    const-string/jumbo v7, "android.icu.impl.LocaleDisplayNamesImpl"

    invoke-static {v6, v7}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    const-string/jumbo v6, "getInstance"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/icu/util/ULocale;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_0
    :try_start_2
    const-string/jumbo v6, "getInstance"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/icu/util/ULocale;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, [Landroid/icu/text/DisplayContext;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    :goto_1
    sput-object v2, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    sput-object v3, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;
    .locals 1

    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-static {p0, v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    :try_start_0
    sget-object v4, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/icu/text/LocaleDisplayNames;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;

    invoke-direct {v3, p0, p1, v7}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;)V

    :cond_1
    return-object v3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static varargs getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    :try_start_0
    sget-object v4, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/icu/text/LocaleDisplayNames;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;

    invoke-direct {v3, p0, p1, v7}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;)V

    :cond_1
    return-object v3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getInstance(Ljava/util/Locale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
.end method

.method public abstract getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
.end method

.method public abstract getLocale()Landroid/icu/util/ULocale;
.end method

.method public getUiList(Ljava/util/Set;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;Z",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    invoke-static {p3, p2}, Landroid/icu/text/LocaleDisplayNames$UiListItem;->getComparator(Ljava/util/Comparator;Z)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/LocaleDisplayNames;->getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
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
.end method

.method public abstract keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
.end method

.method public abstract localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract scriptDisplayName(I)Ljava/lang/String;
.end method

.method public abstract scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method
