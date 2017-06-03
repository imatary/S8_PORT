.class final Landroid/icu/util/UResourceBundle$ResourceCacheKey;
.super Ljava/lang/Object;
.source "UResourceBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/UResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceCacheKey"
.end annotation


# instance fields
.field private defaultLocale:Landroid/icu/util/ULocale;

.field private hashCodeCache:I

.field private searchName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/UResourceBundle$ResourceCacheKey;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->setKeyValues(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/UResourceBundle$ResourceCacheKey;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;-><init>()V

    return-void
.end method

.method private declared-synchronized setKeyValues(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    iput-object p2, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return v6

    :cond_0
    if-ne p0, p1, :cond_1

    return v7

    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    move-object v3, v0

    iget v4, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    iget v5, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    if-eq v4, v5, :cond_2

    return v6

    :cond_2
    iget-object v4, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    iget-object v5, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->searchName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v6

    :cond_3
    iget-object v4, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    if-nez v4, :cond_4

    iget-object v4, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    if-eqz v4, :cond_5

    return v6

    :cond_4
    iget-object v4, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    iget-object v5, v3, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->defaultLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v4, v5}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_5

    return v6

    :cond_5
    return v7

    :catch_0
    move-exception v1

    return v6

    :catch_1
    move-exception v2

    return v6
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->hashCodeCache:I

    return v0
.end method
