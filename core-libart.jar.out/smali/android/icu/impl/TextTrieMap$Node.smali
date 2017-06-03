.class Landroid/icu/impl/TextTrieMap$Node;
.super Ljava/lang/Object;
.source "TextTrieMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TextTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private _children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>.Node;>;"
        }
    .end annotation
.end field

.field private _text:[C

.field private _values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/icu/impl/TextTrieMap;


# direct methods
.method private constructor <init>(Landroid/icu/impl/TextTrieMap;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TextTrieMap;Landroid/icu/impl/TextTrieMap$Node;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;)V

    return-void
.end method

.method private constructor <init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/List",
            "<TV;>;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>.Node;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    iput-object p3, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    iput-object p4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    return-void
.end method

.method private add([CILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CITV;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v4, p1

    if-ne v4, p2, :cond_0

    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    invoke-direct {p0, v4, p3}, Landroid/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    return-void

    :cond_0
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    new-instance v0, Landroid/icu/impl/TextTrieMap$Node;

    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    invoke-static {p1, p2}, Landroid/icu/impl/TextTrieMap;->-wrap0([CI)[C

    move-result-object v5

    invoke-direct {p0, v8, p3}, Landroid/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6, v8}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/TextTrieMap$Node;

    aget-char v4, p1, p2

    iget-object v5, v3, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v5, v5, v6

    if-ge v4, v5, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :cond_3
    new-instance v4, Landroid/icu/impl/TextTrieMap$Node;

    iget-object v5, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    invoke-static {p1, p2}, Landroid/icu/impl/TextTrieMap;->-wrap0([CI)[C

    move-result-object v6

    invoke-direct {p0, v8, p3}, Landroid/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void

    :cond_4
    aget-char v4, p1, p2

    iget-object v5, v3, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v5, v5, v6

    if-ne v4, v5, :cond_2

    invoke-direct {v3, p1, p2}, Landroid/icu/impl/TextTrieMap$Node;->lenMatches([CI)I

    move-result v2

    iget-object v4, v3, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v4, v4

    if-ne v2, v4, :cond_5

    add-int v4, p2, v2

    invoke-direct {v3, p1, v4, p3}, Landroid/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_5
    invoke-direct {v3, v2}, Landroid/icu/impl/TextTrieMap$Node;->split(I)V

    add-int v4, p2, v2

    invoke-direct {v3, p1, v4, p3}, Landroid/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TV;>;TV;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private lenMatches([CI)I
    .locals 5

    array-length v3, p1

    sub-int v2, v3, p2

    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v3, v3

    if-ge v3, v2, :cond_1

    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v1, v3

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v3, v3, v0

    add-int v4, p2, v0

    aget-char v4, p1, v4

    if-eq v3, v4, :cond_2

    :cond_0
    return v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private matchFollowing(Landroid/icu/impl/TextTrieMap$CharIterator;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v3, v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_1
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v4, v4, v1

    if-eq v3, v4, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private split(I)V
    .locals 5

    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    invoke-static {v2, p1}, Landroid/icu/impl/TextTrieMap;->-wrap0([CI)[C

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/icu/impl/TextTrieMap;->-wrap1([CII)[C

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    new-instance v0, Landroid/icu/impl/TextTrieMap$Node;

    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->this$0:Landroid/icu/impl/TextTrieMap;

    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/icu/impl/TextTrieMap$Node;-><init>(Landroid/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public add(Landroid/icu/impl/TextTrieMap$CharIterator;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TextTrieMap$CharIterator;",
            "TV;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/icu/impl/TextTrieMap;->-wrap2(Ljava/lang/CharSequence;)[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Landroid/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    return-void
.end method

.method public findMatch(Landroid/icu/impl/TextTrieMap$CharIterator;)Landroid/icu/impl/TextTrieMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TextTrieMap$CharIterator;",
            ")",
            "Landroid/icu/impl/TextTrieMap",
            "<TV;>.Node;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v5

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v0

    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TextTrieMap$Node;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v1, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v5, v5, v6

    if-ge v4, v5, :cond_4

    :cond_3
    :goto_0
    return-object v3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v1, Landroid/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v5, v5, v6

    if-ne v4, v5, :cond_2

    invoke-direct {v1, p1}, Landroid/icu/impl/TextTrieMap$Node;->matchFollowing(Landroid/icu/impl/TextTrieMap$CharIterator;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v1

    goto :goto_0
.end method

.method public values()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
