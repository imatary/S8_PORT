.class public abstract Lorg/apache/harmony/xml/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/NodeImpl$1;,
        Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lorg/w3c/dom/NodeList;

.field static final NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;


# instance fields
.field document:Lorg/apache/harmony/xml/dom/DocumentImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    new-instance v0, Lorg/apache/harmony/xml/dom/NodeImpl$1;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeImpl$1;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    return-void
.end method

.method private static createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_1
    return-object v3

    :sswitch_0
    move-object v1, p0

    check-cast v1, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    move-object v2, p0

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported node type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :pswitch_0
    return-object p0

    :pswitch_1
    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    return-object v0

    :pswitch_2
    const/4 v0, 0x0

    return-object v0

    :pswitch_3
    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    return-object v0

    :pswitch_4
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getParentBaseUri()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private namedNodeMapsEqual(Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/NamedNodeMap;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-eq v3, v4, :cond_0

    return v5

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    :cond_2
    return v5

    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method private sanitizeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v2
.end method

.method static setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x0

    const-string/jumbo v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v5, Lorg/w3c/dom/DOMException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot rename nodes of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    invoke-direct {v5, v7, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1
    new-instance v5, Lorg/w3c/dom/DOMException;

    invoke-direct {v5, v7, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_2
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lorg/w3c/dom/DOMException;

    invoke-direct {v5, v7, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :pswitch_0
    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    iput-boolean v6, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    iput-object p1, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_1
    move-object v1, p0

    check-cast v1, Lorg/apache/harmony/xml/dom/ElementImpl;

    iput-boolean v6, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    iput-object p1, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0xe

    const/4 v5, 0x1

    if-nez p2, :cond_0

    new-instance v4, Lorg/w3c/dom/DOMException;

    invoke-direct {v4, v6, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    const/4 v3, 0x0

    const-string/jumbo v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lorg/w3c/dom/DOMException;

    const/4 v5, 0x5

    invoke-direct {v4, v5, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v4, Lorg/w3c/dom/DOMException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot rename nodes of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-direct {v4, v6, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :pswitch_0
    const-string/jumbo v4, "xmlns"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    iput-boolean v5, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    iput-object p1, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    iput-object v3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    iput-object p2, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_4
    new-instance v4, Lorg/w3c/dom/DOMException;

    invoke-direct {v4, v6, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :pswitch_1
    move-object v1, p0

    check-cast v1, Lorg/apache/harmony/xml/dom/ElementImpl;

    iput-boolean v5, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    iput-object p1, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    iput-object v3, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    iput-object p2, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0xe

    if-nez p1, :cond_0

    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string/jumbo v0, "xmlns"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-object p0

    :cond_3
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBaseURI()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v4, Lorg/w3c/dom/DOMException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported node type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-direct {v4, v6, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :pswitch_0
    move-object v4, p0

    check-cast v4, Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentURI()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->sanitizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_1
    move-object v1, p0

    check-cast v1, Lorg/w3c/dom/Element;

    const-string/jumbo v4, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v5, "base"

    invoke-interface {v1, v4, v5}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v6

    :cond_3
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    return-object v6

    :pswitch_2
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_3
    return-object v6

    :pswitch_4
    return-object v6

    :pswitch_5
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    sget-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    return-object v0
.end method

.method public final getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/NodeImpl;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    goto :goto_0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTextContent(Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v3, p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    :cond_1
    return-object v2
.end method

.method public hasAttributes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final isDefaultNamespace(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-ne p1, p0, :cond_0

    return v8

    :cond_0
    invoke-static {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    return v7

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_c

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    :cond_4
    return v7

    :cond_5
    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_6

    instance-of v5, v0, Ljava/lang/Short;

    if-eqz v5, :cond_7

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    :cond_7
    instance-of v5, v0, Lorg/w3c/dom/NamedNodeMap;

    if-eqz v5, :cond_9

    instance-of v5, v1, Lorg/w3c/dom/NamedNodeMap;

    if-eqz v5, :cond_8

    check-cast v0, Lorg/w3c/dom/NamedNodeMap;

    check-cast v1, Lorg/w3c/dom/NamedNodeMap;

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->namedNodeMapsEqual(Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/NamedNodeMap;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_8
    return v7

    :cond_9
    instance-of v5, v0, Lorg/w3c/dom/Node;

    if-eqz v5, :cond_b

    instance-of v5, v1, Lorg/w3c/dom/Node;

    if-eqz v5, :cond_a

    check-cast v0, Lorg/w3c/dom/Node;

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_a
    return v7

    :cond_b
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_c
    return v8
.end method

.method isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v8, 0x0

    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v6

    move-object v4, v6

    :goto_0
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    if-nez p1, :cond_1

    if-nez v5, :cond_2

    :cond_0
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_2
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->hasAttributes()Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    invoke-direct {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    const-string/jumbo v9, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_2
    if-eqz v9, :cond_5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    :goto_3
    return-object v7

    :cond_7
    const-string/jumbo v9, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    :cond_8
    move-object v7, v8

    goto :goto_3

    :cond_9
    return-object v8
.end method

.method public final lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return-object v8

    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v5

    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->hasAttributes()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    invoke-direct {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "xmlns"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v8
.end method

.method public normalize()V
    .locals 0

    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final setNodeValue(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported node type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p0, Lorg/w3c/dom/CharacterData;

    invoke-interface {p0, p1}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {p0, p1}, Lorg/w3c/dom/ProcessingInstruction;->setData(Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    return-void

    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public final setTextContent(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lorg/w3c/dom/DOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported node type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :pswitch_0
    return-void

    :goto_0
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/NodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->setNodeValue(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v2, p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v0

    if-nez p2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    :goto_1
    return-object v2

    :cond_1
    new-instance v2, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    invoke-direct {v2, p2, p3}, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;-><init>(Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_1
.end method
