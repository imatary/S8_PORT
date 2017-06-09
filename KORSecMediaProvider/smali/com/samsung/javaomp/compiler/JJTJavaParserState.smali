.class public Lcom/samsung/javaomp/compiler/JJTJavaParserState;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private marks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mk:I

.field private node_created:Z

.field private nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/javaomp/compiler/Node;",
            ">;"
        }
    .end annotation
.end field

.field private sp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->nodes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    iput v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->sp:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    return-void
.end method


# virtual methods
.method public clearNodeScope(Lcom/samsung/javaomp/compiler/Node;)V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->sp:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->popNode()Lcom/samsung/javaomp/compiler/Node;

    goto :goto_0
.end method

.method public closeNodeScope(Lcom/samsung/javaomp/compiler/Node;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-gtz p2, :cond_0

    invoke-interface {p1}, Lcom/samsung/javaomp/compiler/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->pushNode(Lcom/samsung/javaomp/compiler/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->node_created:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->popNode()Lcom/samsung/javaomp/compiler/Node;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/javaomp/compiler/Node;->jjtSetParent(Lcom/samsung/javaomp/compiler/Node;)V

    invoke-interface {p1, v1, v0}, Lcom/samsung/javaomp/compiler/Node;->jjtAddChild(Lcom/samsung/javaomp/compiler/Node;I)V

    move p2, v0

    goto :goto_0
.end method

.method public closeNodeScope(Lcom/samsung/javaomp/compiler/Node;Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    iput-boolean v2, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->node_created:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->nodeArity()I

    move-result v1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    :goto_1
    move v0, v1

    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/javaomp/compiler/Node;->jjtClose()V

    invoke-virtual {p0, p1}, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->pushNode(Lcom/samsung/javaomp/compiler/Node;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->node_created:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->popNode()Lcom/samsung/javaomp/compiler/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/javaomp/compiler/Node;->jjtSetParent(Lcom/samsung/javaomp/compiler/Node;)V

    invoke-interface {p1, v0, v1}, Lcom/samsung/javaomp/compiler/Node;->jjtAddChild(Lcom/samsung/javaomp/compiler/Node;I)V

    goto :goto_1
.end method

.method public nodeArity()I
    .locals 2

    iget v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->sp:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public nodeCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->node_created:Z

    return v0
.end method

.method public openNodeScope(Lcom/samsung/javaomp/compiler/Node;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    iget v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->sp:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    invoke-interface {p1}, Lcom/samsung/javaomp/compiler/Node;->jjtOpen()V

    return-void
.end method

.method public peekNode()Lcom/samsung/javaomp/compiler/Node;
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->nodes:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/compiler/Node;

    return-object v0
.end method

.method public popNode()Lcom/samsung/javaomp/compiler/Node;
    .locals 2

    iget v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->sp:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    if-lt v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->nodes:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/compiler/Node;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    goto :goto_0
.end method

.method public pushNode(Lcom/samsung/javaomp/compiler/Node;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->sp:I

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->marks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->sp:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->mk:I

    return-void
.end method

.method public rootNode()Lcom/samsung/javaomp/compiler/Node;
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JJTJavaParserState;->nodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/javaomp/compiler/Node;

    return-object v0
.end method
