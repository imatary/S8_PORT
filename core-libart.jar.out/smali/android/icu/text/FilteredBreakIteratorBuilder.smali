.class public abstract Landroid/icu/text/FilteredBreakIteratorBuilder;
.super Ljava/lang/Object;
.source "FilteredBreakIteratorBuilder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance()Landroid/icu/text/FilteredBreakIteratorBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>()V

    return-object v0
.end method

.method public static createInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/FilteredBreakIteratorBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0, p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method


# virtual methods
.method public abstract build(Landroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract suppressBreakAfter(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract unsuppressBreakAfter(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
