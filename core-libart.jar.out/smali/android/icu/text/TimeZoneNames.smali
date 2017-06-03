.class public abstract Landroid/icu/text/TimeZoneNames;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TimeZoneNames$Cache;,
        Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;,
        Landroid/icu/text/TimeZoneNames$Factory;,
        Landroid/icu/text/TimeZoneNames$MatchInfo;,
        Landroid/icu/text/TimeZoneNames$NameType;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY_CLASS:Ljava/lang/String; = "android.icu.impl.TimeZoneNamesFactoryImpl"

.field private static final FACTORY_NAME_PROP:Ljava/lang/String; = "android.icu.text.TimeZoneNames.Factory.impl"

.field private static TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache; = null

.field private static final TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

.field private static final serialVersionUID:J = -0x7f66b7d81bd309c1L


# direct methods
.method static synthetic -get0()Landroid/icu/text/TimeZoneNames$Factory;
    .locals 1

    sget-object v0, Landroid/icu/text/TimeZoneNames;->TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    new-instance v6, Landroid/icu/text/TimeZoneNames$Cache;

    invoke-direct {v6, v7}, Landroid/icu/text/TimeZoneNames$Cache;-><init>(Landroid/icu/text/TimeZoneNames$Cache;)V

    sput-object v6, Landroid/icu/text/TimeZoneNames;->TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache;

    const/4 v3, 0x0

    const-string/jumbo v6, "android.icu.text.TimeZoneNames.Factory.impl"

    const-string/jumbo v7, "android.icu.impl.TimeZoneNamesFactoryImpl"

    invoke-static {v6, v7}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/icu/text/TimeZoneNames$Factory;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;

    invoke-direct {v3}, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;-><init>()V

    :cond_1
    sput-object v3, Landroid/icu/text/TimeZoneNames;->TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

    return-void

    :catch_0
    move-exception v2

    :goto_1
    const-string/jumbo v6, "android.icu.impl.TimeZoneNamesFactoryImpl"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v1, "android.icu.impl.TimeZoneNamesFactoryImpl"

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/TimeZoneNames;->TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache;

    invoke-virtual {v1, v0, p0}, Landroid/icu/text/TimeZoneNames$Cache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/TimeZoneNames;

    return-object v1
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    return-object v0
.end method

.method public static getTZDBInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .locals 1

    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames;

    invoke-direct {v0, p0}, Landroid/icu/impl/TZDBTimeZoneNames;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The method is not implemented in TimeZoneNames base class."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getAvailableMetaZoneIDs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Landroid/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_4

    aget-object v3, p2, v0

    invoke-virtual {p0, p1, v3}, Landroid/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p3, p4}, Landroid/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p0, v1, v3}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    add-int v4, p6, v0

    aput-object v2, p5, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
.end method

.method public abstract getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public abstract getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
.end method

.method public loadAllDisplayNames()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
