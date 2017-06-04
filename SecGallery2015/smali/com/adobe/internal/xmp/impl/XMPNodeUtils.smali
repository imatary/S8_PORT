.class public Lcom/adobe/internal/xmp/impl/XMPNodeUtils;
.super Ljava/lang/Object;
.source "XMPNodeUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v2, "[]"

    invoke-direct {v1, v2, p2, v3}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v2, "xml:lang"

    invoke-direct {v0, v2, p1, v3}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v1, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    const-string/jumbo v2, "x-default"

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(ILcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method static chooseLocalizedText(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/16 v11, 0x66

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v7, "Localized text array is not alt-text"

    invoke-direct {v6, v7, v11}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_1

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    const/4 v7, 0x0

    aput-object v7, v6, v9

    :goto_0
    return-object v6

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v7, "Alt-text array item is not simple"

    invoke-direct {v6, v7, v11}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    :cond_3
    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "xml:lang"

    invoke-virtual {v0, v9}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    new-instance v6, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v7, "Alt-text array item has no language qualifier"

    invoke-direct {v6, v7, v11}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    :cond_5
    invoke-virtual {v0, v9}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    aput-object v0, v6, v9

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v4, :cond_7

    move-object v4, v0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const-string/jumbo v6, "x-default"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, v0

    goto :goto_1

    :cond_9
    if-ne v2, v9, :cond_a

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    aput-object v4, v6, v9

    goto/16 :goto_0

    :cond_a
    if-le v2, v9, :cond_b

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    aput-object v4, v6, v9

    goto/16 :goto_0

    :cond_b
    if-eqz v5, :cond_c

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    aput-object v5, v6, v9

    goto/16 :goto_0

    :cond_c
    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v10

    invoke-virtual {p0, v9}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v7

    aput-object v7, v6, v9

    goto/16 :goto_0
.end method

.method static deleteNode(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getParent()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isQualifier()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->removeQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :goto_0
    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getParent()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->removeChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->removeChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method static detectAltText(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 5

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-static {p0}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_2
    return-void
.end method

.method static findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/16 v4, 0x66

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isStruct()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->isImplicit()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "Named children only allowed for schemas and structs"

    invoke-direct {v2, v3, v4}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "Named children not allowed for arrays"

    invoke-direct {v2, v3, v4}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    :cond_2
    invoke-virtual {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    new-instance v1, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>()V

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-direct {v0, p1, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v0, v3}, Lcom/adobe/internal/xmp/impl/XMPNode;->setImplicit(Z)V

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_3
    sget-boolean v2, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_4
    return-object v0
.end method

.method private static findIndexedItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/16 v6, 0x66

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v5, :cond_0

    new-instance v3, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v4, "Array index must be larger than zero"

    const/16 v5, 0x66

    invoke-direct {v3, v4, v5}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v3, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v4, "Array index not digits."

    invoke-direct {v3, v4, v6}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v1, v3, :cond_1

    new-instance v2, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v3, "[]"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v2, v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->setImplicit(Z)V

    invoke-virtual {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_1
    return v1
.end method

.method static findNode(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/xpath/XMPPath;ZLcom/adobe/internal/xmp/options/PropertyOptions;)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    new-instance v4, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v5, "Empty XMPPath"

    const/16 v6, 0x66

    invoke-direct {v4, v5, v6}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_1
    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, v6}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, p2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-object v4

    :cond_3
    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->isImplicit()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->setImplicit(Z)V

    move-object v3, v0

    :cond_4
    const/4 v2, 0x1

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    invoke-virtual {p1, v2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-static {v0, v5, p2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->followXPathStep(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_2

    invoke-static {v3}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->isImplicit()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->setImplicit(Z)V

    if-ne v2, v8, :cond_9

    invoke-virtual {p1, v2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->isAlias()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p1, v2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {p1, v2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setOption(IZ)V

    :cond_7
    :goto_2
    if-nez v3, :cond_8

    move-object v3, v0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_7

    invoke-virtual {p1, v2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v5

    if-ne v5, v8, :cond_7

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;
    :try_end_1
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/adobe/internal/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->setOptions(Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    :cond_b
    move-object v4, v0

    goto/16 :goto_0
.end method

.method private static findQualifierNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    sget-boolean v1, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->findQualifierByName(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->setImplicit(Z)V

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_1
    return-object v0
.end method

.method static findSchemaNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v3, 0x1

    sget-boolean v2, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getParent()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    new-instance v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    new-instance v2, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v2, v3}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setSchemaNode(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v1, v3}, Lcom/adobe/internal/xmp/impl/XMPNode;->setImplicit(Z)V

    invoke-static {}, Lcom/adobe/internal/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/internal/xmp/XMPSchemaRegistry;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/adobe/internal/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/adobe/internal/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/internal/xmp/XMPSchemaRegistry;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/adobe/internal/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_2
    return-object v1

    :cond_3
    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "Unregistered schema namespace URI"

    const/16 v4, 0x65

    invoke-direct {v2, v3, v4}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method static findSchemaNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    return-object v0
.end method

.method private static followXPathStep(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;Z)Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v7

    if-ne v7, v9, :cond_1

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, p2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, p2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findQualifierNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArray()Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v9, "Indexing applied to non-array"

    const/16 v10, 0x66

    invoke-direct {v8, v9, v10}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    :cond_3
    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, p2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findIndexedItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)I

    move-result v2

    :goto_1
    if-gt v9, v2, :cond_0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v8

    if-gt v2, v8, :cond_0

    invoke-virtual {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v3

    goto :goto_0

    :cond_4
    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    goto :goto_1

    :cond_5
    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/adobe/internal/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v0, v6, v10

    aget-object v1, v6, v9

    invoke-static {p0, v0, v1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->lookupFieldSelector(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v8, 0x5

    if-ne v7, v8, :cond_7

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/adobe/internal/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v10

    aget-object v5, v6, v9

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v8

    invoke-static {p0, v4, v5, v8}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->lookupQualSelector(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_7
    new-instance v8, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v9, "Unknown array indexing step in FollowXPathStep"

    const/16 v10, 0x9

    invoke-direct {v8, v9, v10}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8
.end method

.method private static lookupFieldSelector(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v5

    if-gt v3, v5, :cond_4

    if-gez v4, :cond_4

    invoke-virtual {p0, v3}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isStruct()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v6, "Field selector must be used on array of struct"

    const/16 v7, 0x66

    invoke-direct {v5, v6, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v5

    if-gt v2, v5, :cond_3

    invoke-virtual {v1, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v4
.end method

.method static lookupLanguageItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "Language item must be used on array"

    const/16 v4, 0x66

    invoke-direct {v2, v3, v4}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "xml:lang"

    invoke-virtual {v0, v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v1

    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static lookupQualSelector(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v6, 0x1

    const-string/jumbo v7, "xml:lang"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p2}, Lcom/adobe/internal/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    and-int/lit16 v7, p3, 0x1000

    if-lez v7, :cond_0

    new-instance v3, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v7, "[]"

    invoke-direct {v3, v7, v9}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    new-instance v5, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v7, "xml:lang"

    const-string/jumbo v8, "x-default"

    invoke-direct {v5, v7, v8, v9}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v3, v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-virtual {p0, v6, v3}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(ILcom/adobe/internal/xmp/impl/XMPNode;)V

    :goto_0
    return v6

    :cond_0
    move v6, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-virtual {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, -0x1

    goto :goto_0
.end method

.method static normalizeLangArray(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "x-default"

    invoke-virtual {v0, v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->removeChild(I)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(ILcom/adobe/internal/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-ne v2, v6, :cond_0

    invoke-virtual {p0, v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v3, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static serializeNodeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    invoke-static {v1}, Lcom/adobe/internal/xmp/impl/Utils;->removeControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/adobe/internal/xmp/XMPUtils;->convertFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/adobe/internal/xmp/XMPUtils;->convertFromInteger(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/adobe/internal/xmp/XMPUtils;->convertFromLong(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_4

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/adobe/internal/xmp/XMPUtils;->convertFromDouble(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    instance-of v2, p0, Lcom/adobe/internal/xmp/XMPDateTime;

    if-eqz v2, :cond_5

    check-cast p0, Lcom/adobe/internal/xmp/XMPDateTime;

    invoke-static {p0}, Lcom/adobe/internal/xmp/XMPUtils;->convertFromDate(Lcom/adobe/internal/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    instance-of v2, p0, Ljava/util/GregorianCalendar;

    if-eqz v2, :cond_6

    check-cast p0, Ljava/util/GregorianCalendar;

    invoke-static {p0}, Lcom/adobe/internal/xmp/XMPDateTimeFactory;->createFromCalendar(Ljava/util/Calendar;)Lcom/adobe/internal/xmp/XMPDateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/internal/xmp/XMPUtils;->convertFromDate(Lcom/adobe/internal/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    instance-of v2, p0, [B

    if-eqz v2, :cond_7

    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/adobe/internal/xmp/XMPUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static setNodeValue(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->serializeNodeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isQualifier()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "xml:lang"

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static verifySetOptions(Lcom/adobe/internal/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/internal/xmp/options/PropertyOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-instance p0, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {p0}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    :cond_2
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    :cond_3
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v1, "Structs and arrays can\'t have values"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->assertConsistency(I)V

    return-object p0
.end method
