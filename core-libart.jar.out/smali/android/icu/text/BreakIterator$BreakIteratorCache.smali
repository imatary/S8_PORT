.class final Landroid/icu/text/BreakIterator$BreakIteratorCache;
.super Ljava/lang/Object;
.source "BreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BreakIteratorCache"
.end annotation


# instance fields
.field private iter:Landroid/icu/text/BreakIterator;

.field private where:Landroid/icu/util/ULocale;


# direct methods
.method constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/BreakIterator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->where:Landroid/icu/util/ULocale;

    invoke-virtual {p2}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator;

    iput-object v0, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->iter:Landroid/icu/text/BreakIterator;

    return-void
.end method


# virtual methods
.method createBreakInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->iter:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator;

    return-object v0
.end method

.method getLocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->where:Landroid/icu/util/ULocale;

    return-object v0
.end method
