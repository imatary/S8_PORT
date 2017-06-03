.class Landroid/icu/text/FunctionReplacer;
.super Ljava/lang/Object;
.source "FunctionReplacer.java"

# interfaces
.implements Landroid/icu/text/UnicodeReplacer;


# instance fields
.field private replacer:Landroid/icu/text/UnicodeReplacer;

.field private translit:Landroid/icu/text/Transliterator;


# direct methods
.method public constructor <init>(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeReplacer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    iput-object p2, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    return-void
.end method


# virtual methods
.method public addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    invoke-virtual {v0}, Landroid/icu/text/Transliterator;->getTargetSet()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public replace(Landroid/icu/text/Replaceable;II[I)I
    .locals 2

    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/icu/text/UnicodeReplacer;->replace(Landroid/icu/text/Replaceable;II[I)I

    move-result v0

    add-int p3, p2, v0

    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;II)I

    move-result p3

    sub-int v1, p3, p2

    return v1
.end method

.method public toReplacerPattern(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->translit:Landroid/icu/text/Transliterator;

    invoke-virtual {v1}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/FunctionReplacer;->replacer:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {v1, p1}, Landroid/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
