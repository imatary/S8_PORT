.class Landroid/icu/text/BreakIteratorFactory$BFService;
.super Landroid/icu/impl/ICULocaleService;
.source "BreakIteratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakIteratorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BFService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "BreakIterator"

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;

    invoke-direct {v0, p0}, Landroid/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;-><init>(Landroid/icu/text/BreakIteratorFactory$BFService;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/BreakIteratorFactory$BFService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {p0}, Landroid/icu/text/BreakIteratorFactory$BFService;->markDefault()V

    return-void
.end method


# virtual methods
.method public validateFallbackLocale()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method
