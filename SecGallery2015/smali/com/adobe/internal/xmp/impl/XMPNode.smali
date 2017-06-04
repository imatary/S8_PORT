.class Lcom/adobe/internal/xmp/impl/XMPNode;
.super Ljava/lang/Object;
.source "XMPNode.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private alias:Z

.field private children:Ljava/util/List;

.field private hasAliases:Z

.field private hasValueChild:Z

.field private implicit:Z

.field private name:Ljava/lang/String;

.field private options:Lcom/adobe/internal/xmp/options/PropertyOptions;

.field private parent:Lcom/adobe/internal/xmp/impl/XMPNode;

.field private qualifier:Ljava/util/List;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/internal/xmp/impl/XMPNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    iput-object p1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    return-void
.end method

.method private assertChildNotExisting(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const-string/jumbo v0, "[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate property or field node \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    return-void
.end method

.method private assertQualifierNotExisting(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const-string/jumbo v0, "[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->findQualifierByName(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' qualifier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    return-void
.end method

.method private find(Ljava/util/List;Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getChildren()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    return-object v0
.end method

.method private getQualifier()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    return-object v0
.end method

.method private isLanguageNode()Z
    .locals 2

    const-string/jumbo v0, "xml:lang"

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTypeNode()Z
    .locals 2

    const-string/jumbo v0, "rdf:type"

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addChild(ILcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->assertChildNotExisting(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setParent(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->assertChildNotExisting(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setParent(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->assertQualifierNotExisting(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setParent(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setQualifier(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setHasQualifiers(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->isLanguageNode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {v2, v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setHasLanguage(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->isTypeNode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {v2, v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setHasType(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {v3}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected cleanupChildren()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->clone(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clone(Z)Ljava/lang/Object;
    .locals 5

    :try_start_0
    new-instance v2, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getOptions()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>(I)V
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    iget-object v3, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {p0, v1, p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->cloneSubtree(Lcom/adobe/internal/xmp/impl/XMPNode;Z)V

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>()V

    goto :goto_0
.end method

.method public cloneSubtree(Lcom/adobe/internal/xmp/impl/XMPNode;Z)V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    invoke-virtual {v0, p2}, Lcom/adobe/internal/xmp/impl/XMPNode;->clone(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v6, Lcom/adobe/internal/xmp/impl/XMPNode;->$assertionsDisabled:Z

    if-nez v6, :cond_7

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adobe/internal/xmp/impl/XMPNode;

    if-eqz p2, :cond_6

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_6
    invoke-virtual {v5, p2}, Lcom/adobe/internal/xmp/impl/XMPNode;->clone(Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/internal/xmp/impl/XMPNode;

    if-eqz v4, :cond_4

    invoke-virtual {p1, v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    :try_end_1
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_7
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    check-cast p1, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    check-cast p1, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public findChildByName(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 1

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->find(Ljava/util/List;Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    return-object v0
.end method

.method public findQualifierByName(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->find(Ljava/util/List;Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 2

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    return-object v0
.end method

.method public getChildrenLength()I
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHasAliases()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->hasAliases:Z

    return v0
.end method

.method public getHasValueChild()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->hasValueChild:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>()V

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    :cond_0
    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    return-object v0
.end method

.method public getParent()Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->parent:Lcom/adobe/internal/xmp/impl/XMPNode;

    return-object v0
.end method

.method public getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 2

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    return-object v0
.end method

.method public getQualifierLength()I
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnmodifiableChildren()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQualifier()Z
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlias()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->alias:Z

    return v0
.end method

.method public isImplicit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->implicit:Z

    return v0
.end method

.method public iterateChildren()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public iterateQualifier()Ljava/util/Iterator;
    .locals 2

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/adobe/internal/xmp/impl/XMPNode$1;

    invoke-direct {v1, p0, v0}, Lcom/adobe/internal/xmp/impl/XMPNode$1;-><init>(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/util/Iterator;)V

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public removeChild(I)V
    .locals 2

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->cleanupChildren()V

    return-void
.end method

.method public removeChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 1

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->cleanupChildren()V

    return-void
.end method

.method public removeChildren()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    return-void
.end method

.method public removeQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-direct {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->isLanguageNode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setHasLanguage(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setHasQualifiers(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    :cond_1
    return-void

    :cond_2
    invoke-direct {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->isTypeNode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setHasType(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    goto :goto_0
.end method

.method public removeQualifiers()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setHasQualifiers(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {v0, v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setHasLanguage(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {v0, v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setHasType(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    return-void
.end method

.method public replaceChild(ILcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 2

    invoke-virtual {p2, p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setParent(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAlias(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->alias:Z

    return-void
.end method

.method public setHasAliases(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->hasAliases:Z

    return-void
.end method

.method public setHasValueChild(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->hasValueChild:Z

    return-void
.end method

.method public setImplicit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->implicit:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->name:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->options:Lcom/adobe/internal/xmp/options/PropertyOptions;

    return-void
.end method

.method protected setParent(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->parent:Lcom/adobe/internal/xmp/impl/XMPNode;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->value:Ljava/lang/String;

    return-void
.end method

.method public sort()V
    .locals 6

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v5

    new-array v5, v5, [Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/adobe/internal/xmp/impl/XMPNode;

    move-object v2, v4

    check-cast v2, [Lcom/adobe/internal/xmp/impl/XMPNode;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-le v4, v3, :cond_1

    const-string/jumbo v4, "xml:lang"

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "rdf:type"

    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->sort()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v4, v2

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    iget-object v4, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->sort()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArray()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/adobe/internal/xmp/impl/XMPNode;->children:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->sort()V

    goto :goto_2

    :cond_4
    return-void
.end method
