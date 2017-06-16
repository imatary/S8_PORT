.class Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;
.super Ljava/lang/Object;
.source "HuffmanTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$1;,
        Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->nodes:Ljava/util/List;

    return-void
.end method

.method private growAndGetNode(I)Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node",
            "<TT;>;"
        }
    .end annotation

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->nodes:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;-><init>(Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->nodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;->empty:Z

    return-object v0
.end method


# virtual methods
.method public final decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->nodes:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;

    :cond_0
    iget-object v4, v2, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;->value:Ljava/lang/Object;

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    shl-int/lit8 v4, v3, 0x1

    add-int/lit8 v3, v4, 0x1

    :goto_0
    iget-object v4, p0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    new-instance v4, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;

    const-string v5, "Invalid bit pattern"

    invoke-direct {v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v0

    new-instance v4, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;

    const-string v5, "Error reading stream for huffman tree"

    invoke-direct {v4, v5, v0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    add-int/lit8 v4, v3, 0x1

    shl-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->nodes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;

    iget-boolean v4, v2, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;->empty:Z

    if-eqz v4, :cond_0

    new-instance v4, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;

    const-string v5, "Invalid bit pattern"

    invoke-direct {v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-object v4, v2, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;->value:Ljava/lang/Object;

    return-object v4
.end method

.method public final insert(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->growAndGetNode(I)Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;

    move-result-object v1

    iget-object v4, v1, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;->value:Ljava/lang/Object;

    if-eqz v4, :cond_0

    new-instance v4, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;

    const-string v5, "Can\'t add child to a leaf"

    invoke-direct {v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-ne v0, v4, :cond_1

    shl-int/lit8 v4, v3, 0x1

    add-int/lit8 v3, v4, 0x1

    :goto_1
    invoke-direct {p0, v3}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->growAndGetNode(I)Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;

    move-result-object v1

    iget-object v4, v1, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    new-instance v4, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;

    const-string v5, "Can\'t add child to a leaf"

    invoke-direct {v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    add-int/lit8 v4, v3, 0x1

    shl-int/lit8 v3, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object p2, v1, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;->value:Ljava/lang/Object;

    return-void
.end method
