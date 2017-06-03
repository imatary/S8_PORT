.class public abstract Landroid/icu/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BreakIterator$BreakIteratorCache;,
        Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DONE:I = -0x1

.field public static final KIND_CHARACTER:I = 0x0

.field private static final KIND_COUNT:I = 0x5

.field public static final KIND_LINE:I = 0x2

.field public static final KIND_SENTENCE:I = 0x3

.field public static final KIND_TITLE:I = 0x4

.field public static final KIND_WORD:I = 0x1

.field public static final WORD_IDEO:I = 0x190

.field public static final WORD_IDEO_LIMIT:I = 0x1f4

.field public static final WORD_KANA:I = 0x12c

.field public static final WORD_KANA_LIMIT:I = 0x190

.field public static final WORD_LETTER:I = 0xc8

.field public static final WORD_LETTER_LIMIT:I = 0x12c

.field public static final WORD_NONE:I = 0x0

.field public static final WORD_NONE_LIMIT:I = 0x64

.field public static final WORD_NUMBER:I = 0x64

.field public static final WORD_NUMBER_LIMIT:I = 0xc8

.field private static final iterCache:[Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/SoftReference",
            "<*>;"
        }
    .end annotation
.end field

.field private static shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;


# instance fields
.field private actualLocale:Landroid/icu/util/ULocale;

.field private validLocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "breakiterator"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/text/BreakIterator;->DEBUG:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/ref/SoftReference;

    sput-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    const-class v1, Landroid/icu/text/BreakIterator;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableLocales()[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 2

    const-class v1, Landroid/icu/text/BreakIterator;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "Specified locale is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    sget-object v3, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    sget-object v3, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->createBreakInstance()Landroid/icu/text/BreakIterator;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->createBreakIterator(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v2

    new-instance v0, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    invoke-direct {v0, p0, v2}, Landroid/icu/text/BreakIterator$BreakIteratorCache;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/BreakIterator;)V

    sget-object v3, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, p1

    instance-of v3, v2, Landroid/icu/text/RuleBasedBreakIterator;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/icu/text/RuleBasedBreakIterator;

    invoke-virtual {v1, p1}, Landroid/icu/text/RuleBasedBreakIterator;->setBreakType(I)V

    :cond_2
    return-object v2
.end method

.method public static getCharacterInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getLineInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getLineInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getSentenceInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method private static getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
    .locals 5

    sget-object v3, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    if-nez v3, :cond_0

    :try_start_0
    const-string/jumbo v3, "android.icu.text.BreakIteratorFactory"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    sput-object v3, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v3, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    return-object v3

    :catch_0
    move-exception v1

    sget-boolean v3, Landroid/icu/text/BreakIterator;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1
    move-exception v2

    throw v2
.end method

.method public static getTitleInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getWordInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    sget-object v1, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    aput-object v2, v1, p2

    :cond_0
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static registerInstance(Landroid/icu/text/BreakIterator;Ljava/util/Locale;I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/icu/text/BreakIterator;->registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "registry key must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/icu/text/BreakIterator;->iterCache:[Ljava/lang/ref/SoftReference;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    invoke-virtual {v1, p0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
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

.method public abstract current()I
.end method

.method public abstract first()I
.end method

.method public abstract following(I)I
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/BreakIterator;->actualLocale:Landroid/icu/util/ULocale;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/BreakIterator;->validLocale:Landroid/icu/util/ULocale;

    goto :goto_0
.end method

.method public getRuleStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRuleStatusVec([I)I
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aput v1, p1, v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getText()Ljava/text/CharacterIterator;
.end method

.method public isBoundary(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public abstract last()I
.end method

.method public abstract next()I
.end method

.method public abstract next(I)I
.end method

.method public preceding(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    :goto_0
    if-lt v0, p1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/BreakIterator;->previous()I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract previous()I
.end method

.method final setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iput-object p1, p0, Landroid/icu/text/BreakIterator;->validLocale:Landroid/icu/util/ULocale;

    iput-object p2, p0, Landroid/icu/text/BreakIterator;->actualLocale:Landroid/icu/util/ULocale;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
