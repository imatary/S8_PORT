.class Landroid/icu/text/RemoveTransliterator;
.super Landroid/icu/text/Transliterator;
.source "RemoveTransliterator.java"


# static fields
.field private static final _ID:Ljava/lang/String; = "Any-Remove"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "Any-Remove"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    return-void
.end method

.method static register()V
    .locals 3

    const-string/jumbo v0, "Any-Remove"

    new-instance v1, Landroid/icu/text/RemoveTransliterator$1;

    invoke-direct {v1}, Landroid/icu/text/RemoveTransliterator$1;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Remove"

    const-string/jumbo v1, "Null"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 4

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    const-string/jumbo v3, ""

    invoke-interface {p1, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    sub-int v0, v1, v2

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void
.end method
