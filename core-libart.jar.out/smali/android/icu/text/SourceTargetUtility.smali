.class Landroid/icu/text/SourceTargetUtility;
.super Ljava/lang/Object;
.source "SourceTargetUtility.java"


# static fields
.field static NFC:Landroid/icu/text/Normalizer2;

.field static final NON_STARTERS:Landroid/icu/text/UnicodeSet;


# instance fields
.field final sourceCache:Landroid/icu/text/UnicodeSet;

.field final sourceStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final transform:Landroid/icu/text/Transform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/Transform",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[:^ccc=0:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SourceTargetUtility;->NON_STARTERS:Landroid/icu/text/UnicodeSet;

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SourceTargetUtility;->NFC:Landroid/icu/text/Normalizer2;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/Transform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/Transform",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/Transform",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/text/Normalizer2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    if-eqz p2, :cond_2

    new-instance v4, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v5, "[:^ccc=0:]"

    invoke-direct {v4, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    const/4 v2, 0x0

    :goto_1
    const v4, 0x10ffff

    if-gt v2, v4, :cond_5

    invoke-static {v2}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v2, v3}, Landroid/icu/lang/CharSequences;->equals(ILjava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/4 v0, 0x1

    :cond_0
    if-nez p2, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_3
    sget-object v4, Landroid/icu/text/SourceTargetUtility;->NFC:Landroid/icu/text/Normalizer2;

    invoke-virtual {v4, v2}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v1}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v0, :cond_1

    invoke-virtual {p2, v2}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_2

    :cond_5
    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 7

    invoke-virtual {p1, p2}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    new-instance v5, Landroid/icu/text/UnicodeSet;

    iget-object v6, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-direct {v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v5, v1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    invoke-interface {v5, v2}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p4, v5}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    invoke-interface {v5, v2}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p4, v4}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    invoke-virtual {p3, v2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_1

    :cond_2
    return-void
.end method
