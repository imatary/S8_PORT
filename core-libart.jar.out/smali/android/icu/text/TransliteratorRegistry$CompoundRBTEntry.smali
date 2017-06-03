.class Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundRBTEntry"
.end annotation


# instance fields
.field private ID:Ljava/lang/String;

.field private compoundFilter:Landroid/icu/text/UnicodeSet;

.field private dataVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RuleBasedTransliterator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private idBlockVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RuleBasedTransliterator$Data;",
            ">;",
            "Landroid/icu/text/UnicodeSet;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->ID:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    iput-object p3, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    iput-object p4, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->compoundFilter:Landroid/icu/text/UnicodeSet;

    return-void
.end method


# virtual methods
.method public getInstance()Landroid/icu/text/Transliterator;
    .locals 12

    const/4 v11, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v1, 0x0

    move v5, v4

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RuleBasedTransliterator$Data;

    new-instance v8, Landroid/icu/text/RuleBasedTransliterator;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "%Pass"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0, v11}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    goto :goto_0

    :cond_1
    new-instance v6, Landroid/icu/text/CompoundTransliterator;

    add-int/lit8 v8, v5, -0x1

    invoke-direct {v6, v7, v8}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->ID:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, v8}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    :cond_2
    return-object v6

    :cond_3
    move v4, v5

    goto :goto_1
.end method
