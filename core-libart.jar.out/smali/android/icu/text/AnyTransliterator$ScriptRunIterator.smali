.class Landroid/icu/text/AnyTransliterator$ScriptRunIterator;
.super Ljava/lang/Object;
.source "AnyTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AnyTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScriptRunIterator"
.end annotation


# instance fields
.field public limit:I

.field public scriptCode:I

.field public start:I

.field private text:Landroid/icu/text/Replaceable;

.field private textLimit:I

.field private textStart:I


# direct methods
.method public constructor <init>(Landroid/icu/text/Replaceable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    iput p2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textStart:I

    iput p3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    iput p2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    return-void
.end method


# virtual methods
.method public adjustLimit(I)V
    .locals 1

    iget v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    iget v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    return-void
.end method

.method public next()Z
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v6, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    iput v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    iget v3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    :goto_0
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    iget v3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textStart:I

    if-le v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    iget v3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_2

    :cond_1
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    goto :goto_0

    :cond_2
    :goto_1
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    iget v3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->textLimit:I

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->text:Landroid/icu/text/Replaceable;

    iget v3, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    invoke-interface {v2, v3}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_3

    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    if-ne v2, v6, :cond_4

    iput v1, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    :cond_3
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    goto :goto_1

    :cond_4
    iget v2, p0, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    if-eq v1, v2, :cond_3

    :cond_5
    return v5
.end method
