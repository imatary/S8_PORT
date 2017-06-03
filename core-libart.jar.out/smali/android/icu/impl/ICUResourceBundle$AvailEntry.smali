.class final Landroid/icu/impl/ICUResourceBundle$AvailEntry;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvailEntry"
.end annotation


# instance fields
.field private volatile fullNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loader:Ljava/lang/ClassLoader;

.field private volatile locales:[Ljava/util/Locale;

.field private volatile nameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private volatile ulocales:[Landroid/icu/util/ULocale;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method getFullLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->-wrap1(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getLocaleList()[Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleList([Landroid/icu/util/ULocale;)[Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->-wrap2(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getULocaleList()[Landroid/icu/util/ULocale;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->-wrap0(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
