.class public Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;
.super Ljava/lang/Object;
.source "XMPSerializerRDF.java"


# static fields
.field static final RDF_ATTR_QUALIFIER:Ljava/util/Set;


# instance fields
.field private options:Lcom/adobe/internal/xmp/options/SerializeOptions;

.field private outputStream:Lcom/adobe/internal/xmp/impl/CountOutputStream;

.field private padding:I

.field private unicodeSize:I

.field private writer:Ljava/io/OutputStreamWriter;

.field private xmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "xml:lang"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "rdf:resource"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "rdf:ID"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "rdf:bagID"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "rdf:nodeID"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    return-void
.end method

.method private addPadding(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getExactPacketLength()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/internal/xmp/impl/CountOutputStream;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/CountOutputStream;->getBytesWritten()I

    move-result v2

    iget v3, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/2addr v3, p1

    add-int v0, v2, v3

    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    if-le v0, v2, :cond_0

    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "Can\'t fit into specified packet size"

    const/16 v4, 0x6b

    invoke-direct {v2, v3, v4}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    :cond_1
    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    iget v3, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getNewline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    if-lt v2, v1, :cond_3

    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    :goto_0
    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    add-int/lit8 v3, v1, 0x64

    if-lt v2, v3, :cond_2

    const/16 v2, 0x64

    invoke-direct {p0, v2, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    add-int/lit8 v3, v1, 0x64

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    invoke-direct {p0, v2, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :goto_1
    return-void

    :cond_3
    iget v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    invoke-direct {p0, v2, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    goto :goto_1
.end method

.method private appendNodeValue(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/adobe/internal/xmp/impl/Utils;->escapeXML(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    return-void
.end method

.method private canBeRDFAttrProp(Lcom/adobe/internal/xmp/impl/XMPNode;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isURI()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "[]"

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Lcom/adobe/internal/xmp/impl/QName;

    invoke-direct {v0, p1}, Lcom/adobe/internal/xmp/impl/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/QName;->hasPrefix()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/QName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/adobe/internal/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/internal/xmp/XMPSchemaRegistry;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/adobe/internal/xmp/XMPSchemaRegistry;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    invoke-direct {p0, p4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v1, "xmlns:"

    invoke-direct {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v1, "=\""

    invoke-direct {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private declareUsedNamespaces(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/util/Set;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5, p2, p3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-direct {p0, v0, p2, p3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isStruct()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8, p2, p3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v8, p2, p3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    invoke-direct {p0, v4, p2, p3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private emitRDFArrayTag(Lcom/adobe/internal/xmp/impl/XMPNode;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    if-eqz p2, :cond_2

    const-string/jumbo v0, "<rdf:"

    :goto_0
    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Alt"

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "/>"

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "</rdf:"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "Seq"

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "Bag"

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, ">"

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private endOuterRDFDescription(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "</rdf:Description>"

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    return-void
.end method

.method private serializeAsRDF()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v2, "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>"

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :cond_0
    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOmitXmpMetaElement()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v2, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\""

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOmitVersionAttribute()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/adobe/internal/xmp/XMPMetaFactory;->getVersionInfo()Lcom/adobe/internal/xmp/XMPVersionInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/adobe/internal/xmp/XMPVersionInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "\">"

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v2, "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getUseCanonicalFormat()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFSchemas(I)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v2, "</rdf:RDF>"

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOmitXmpMetaElement()Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v2, "</x:xmpmeta>"

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :cond_3
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getBaseIndent()I

    move-result v0

    :goto_1
    if-lez v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v3}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getIndent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFSchemas(I)V

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<?xpacket end=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getReadOnlyPacket()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x72

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    return-object v1

    :cond_7
    const/16 v2, 0x77

    goto :goto_2
.end method

.method private serializeCanonicalRDFProperty(Lcom/adobe/internal/xmp/impl/XMPNode;ZZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_2

    const-string/jumbo v1, "rdf:value"

    :cond_0
    :goto_0
    invoke-direct {p0, p4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const/16 v8, 0x3c

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-direct {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adobe/internal/xmp/impl/XMPNode;

    sget-object v8, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v8, "[]"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v1, "rdf:li"

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "rdf:resource"

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez p3, :cond_1

    const/16 v8, 0x20

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "=\""

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v8, 0x22

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_c

    if-nez p3, :cond_c

    if-eqz v4, :cond_5

    new-instance v8, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v9, "Can\'t mix rdf:resource and general qualifiers"

    const/16 v10, 0xca

    invoke-direct {v8, v9, v10}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    :cond_5
    if-eqz p2, :cond_7

    const-string/jumbo v8, ">"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v8, "<rdf:Description"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v8, ">"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v8, 0x1

    add-int/lit8 v9, p4, 0x1

    invoke-direct {p0, p1, p2, v8, v9}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/adobe/internal/xmp/impl/XMPNode;ZZI)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adobe/internal/xmp/impl/XMPNode;

    sget-object v8, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x0

    add-int/lit8 v9, p4, 0x1

    invoke-direct {p0, v7, p2, v8, v9}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/adobe/internal/xmp/impl/XMPNode;ZZI)V

    goto :goto_3

    :cond_7
    const-string/jumbo v8, " rdf:parseType=\"Resource\">"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_9

    invoke-direct {p0, p4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v8, "</rdf:Description>"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 p4, p4, -0x1

    :cond_9
    :goto_4
    if-eqz v2, :cond_b

    if-eqz v5, :cond_a

    invoke-direct {p0, p4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    :cond_a
    const-string/jumbo v8, "</"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const/16 v8, 0x3e

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :cond_b
    return-void

    :cond_c
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isURI()Z

    move-result v8

    if-eqz v8, :cond_d

    const-string/jumbo v8, " rdf:resource=\""

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const-string/jumbo v8, "\"/>"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v2, 0x0

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    const-string/jumbo v8, ""

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_e
    const-string/jumbo v8, "/>"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v2, 0x0

    goto :goto_4

    :cond_f
    const/16 v8, 0x3e

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/4 v5, 0x0

    goto :goto_4

    :cond_10
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArray()Z

    move-result v8

    if-eqz v8, :cond_13

    const/16 v8, 0x3e

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v8, 0x1

    add-int/lit8 v9, p4, 0x1

    invoke-direct {p0, p1, v8, v9}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/internal/xmp/impl/XMPNode;ZI)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_11
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    const/4 v8, 0x0

    add-int/lit8 v9, p4, 0x2

    invoke-direct {p0, v0, p2, v8, v9}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/adobe/internal/xmp/impl/XMPNode;ZZI)V

    goto :goto_5

    :cond_12
    const/4 v8, 0x0

    add-int/lit8 v9, p4, 0x1

    invoke-direct {p0, p1, v8, v9}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/internal/xmp/impl/XMPNode;ZI)V

    goto/16 :goto_4

    :cond_13
    if-nez v4, :cond_18

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v8

    if-nez v8, :cond_15

    if-eqz p2, :cond_14

    const-string/jumbo v8, ">"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v8, p4, 0x1

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v8, "<rdf:Description/>"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    :goto_6
    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_4

    :cond_14
    const-string/jumbo v8, " rdf:parseType=\"Resource\"/>"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_6

    :cond_15
    if-eqz p2, :cond_16

    const-string/jumbo v8, ">"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v8, "<rdf:Description"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v8, ">"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    :goto_7
    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    const/4 v8, 0x0

    add-int/lit8 v9, p4, 0x1

    invoke-direct {p0, v0, p2, v8, v9}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/adobe/internal/xmp/impl/XMPNode;ZZI)V

    goto :goto_8

    :cond_16
    const-string/jumbo v8, " rdf:parseType=\"Resource\">"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_7

    :cond_17
    if-eqz p2, :cond_9

    invoke-direct {p0, p4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v8, "</rdf:Description>"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_4

    :cond_18
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/internal/xmp/impl/XMPNode;)Z

    move-result v8

    if-nez v8, :cond_19

    new-instance v8, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v9, "Can\'t mix rdf:resource and complex fields"

    const/16 v10, 0xca

    invoke-direct {v8, v9, v10}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v8

    :cond_19
    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v8, p4, 0x1

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const/16 v8, 0x20

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "=\""

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v8, 0x22

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_9

    :cond_1a
    const-string/jumbo v8, "/>"

    invoke-direct {p0, v8}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v2, 0x0

    goto/16 :goto_4
.end method

.method private serializeCanonicalRDFSchema(Lcom/adobe/internal/xmp/impl/XMPNode;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getUseCanonicalFormat()Z

    move-result v2

    const/4 v3, 0x0

    add-int/lit8 v4, p2, 0x2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/adobe/internal/xmp/impl/XMPNode;ZZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private serializeCanonicalRDFSchemas(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->startOuterRDFDescription(Lcom/adobe/internal/xmp/impl/XMPNode;I)V

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-direct {p0, v0, p1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFSchema(Lcom/adobe/internal/xmp/impl/XMPNode;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->endOuterRDFDescription(I)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v2, "<rdf:Description rdf:about="

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    const-string/jumbo v2, "/>"

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_1
.end method

.method private serializeCompactRDFArrayProp(Lcom/adobe/internal/xmp/impl/XMPNode;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/internal/xmp/impl/XMPNode;ZI)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_0
    add-int/lit8 v0, p2, 0x2

    invoke-direct {p0, p1, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/internal/xmp/impl/XMPNode;I)V

    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/internal/xmp/impl/XMPNode;ZI)V

    return-void
.end method

.method private serializeCompactRDFAttrProps(Lcom/adobe/internal/xmp/impl/XMPNode;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/internal/xmp/impl/XMPNode;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    invoke-direct {p0, p2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v3, "=\""

    invoke-direct {p0, v3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v3, 0x22

    invoke-direct {p0, v3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return v0
.end method

.method private serializeCompactRDFElementProps(Lcom/adobe/internal/xmp/impl/XMPNode;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v12, 0x1

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-direct {p0, v7}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/internal/xmp/impl/XMPNode;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "[]"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v0, "rdf:li"

    :cond_1
    invoke-direct {p0, p2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const/16 v10, 0x3c

    invoke-direct {p0, v10}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/internal/xmp/impl/XMPNode;

    sget-object v10, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v10, "rdf:resource"

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v10, 0x20

    invoke-direct {p0, v10}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v10, "=\""

    invoke-direct {p0, v10}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v12}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v10, 0x22

    invoke-direct {p0, v10}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_5

    invoke-direct {p0, p2, v7}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFGeneralQualifier(ILcom/adobe/internal/xmp/impl/XMPNode;)V

    :goto_2
    if-eqz v1, :cond_0

    if-eqz v4, :cond_4

    invoke-direct {p0, p2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    :cond_4
    const-string/jumbo v10, "</"

    invoke-direct {p0, v10}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const/16 v10, 0x3e

    invoke-direct {p0, v10}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-direct {p0, v7}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFSimpleProp(Lcom/adobe/internal/xmp/impl/XMPNode;)[Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v9, v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aget-object v10, v9, v12

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArray()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-direct {p0, v7, p2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFArrayProp(Lcom/adobe/internal/xmp/impl/XMPNode;I)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, v7, p2, v3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFStructProp(Lcom/adobe/internal/xmp/impl/XMPNode;IZ)Z

    move-result v1

    goto :goto_2

    :cond_8
    return-void
.end method

.method private serializeCompactRDFGeneralQualifier(ILcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v2, " rdf:parseType=\"Resource\">"

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v2, 0x1

    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, p2, v4, v2, v3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/adobe/internal/xmp/impl/XMPNode;ZZI)V

    invoke-virtual {p2}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v1, v4, v4, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/adobe/internal/xmp/impl/XMPNode;ZZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private serializeCompactRDFSchemas(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v4, "<rdf:Description rdf:about="

    invoke-direct {p0, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v4, "xml"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "rdf"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/internal/xmp/impl/XMPNode;

    add-int/lit8 v4, p1, 0x3

    invoke-direct {p0, v2, v3, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iget-object v4, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/internal/xmp/impl/XMPNode;

    add-int/lit8 v4, p1, 0x2

    invoke-direct {p0, v2, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/adobe/internal/xmp/impl/XMPNode;I)Z

    move-result v4

    and-int/2addr v0, v4

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const/16 v4, 0x3e

    invoke-direct {p0, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    iget-object v4, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/internal/xmp/impl/XMPNode;

    add-int/lit8 v4, p1, 0x2

    invoke-direct {p0, v2, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/internal/xmp/impl/XMPNode;I)V

    goto :goto_2

    :cond_2
    const-string/jumbo v4, "/>"

    invoke-direct {p0, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :goto_3
    return-void

    :cond_3
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v4, "</rdf:Description>"

    invoke-direct {p0, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_3
.end method

.method private serializeCompactRDFSimpleProp(Lcom/adobe/internal/xmp/impl/XMPNode;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isURI()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, " rdf:resource=\""

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const-string/jumbo v2, "\"/>"

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string/jumbo v2, "/>"

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const/16 v2, 0x3e

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private serializeCompactRDFStructProp(Lcom/adobe/internal/xmp/impl/XMPNode;IZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-direct {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/internal/xmp/impl/XMPNode;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    :cond_1
    if-eqz p3, :cond_3

    if-eqz v3, :cond_3

    new-instance v5, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v6, "Can\'t mix rdf:resource qualifier and element fields"

    const/16 v7, 0xca

    invoke-direct {v5, v6, v7}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, " rdf:parseType=\"Resource\"/>"

    invoke-direct {p0, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    if-nez v3, :cond_5

    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, p1, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/adobe/internal/xmp/impl/XMPNode;I)Z

    const-string/jumbo v5, "/>"

    invoke-direct {p0, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    const-string/jumbo v5, " rdf:parseType=\"Resource\">"

    invoke-direct {p0, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, p1, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/internal/xmp/impl/XMPNode;I)V

    goto :goto_1

    :cond_6
    const/16 v5, 0x3e

    invoke-direct {p0, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v5, "<rdf:Description"

    invoke-direct {p0, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    add-int/lit8 v5, p2, 0x2

    invoke-direct {p0, p1, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/adobe/internal/xmp/impl/XMPNode;I)Z

    const-string/jumbo v5, ">"

    invoke-direct {p0, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, p1, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/internal/xmp/impl/XMPNode;I)V

    add-int/lit8 v5, p2, 0x1

    invoke-direct {p0, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v5, "</rdf:Description>"

    invoke-direct {p0, v5}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_1
.end method

.method private startOuterRDFDescription(Lcom/adobe/internal/xmp/impl/XMPNode;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v1, "<rdf:Description rdf:about="

    invoke-direct {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "rdf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, p2, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/util/Set;I)V

    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writeNewline()V

    return-void
.end method

.method private write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(I)V

    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private writeChars(IC)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p2}, Ljava/io/OutputStreamWriter;->write(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeIndent(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getBaseIndent()I

    move-result v1

    add-int v0, v1, p1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getIndent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeNewline()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getNewline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private writeTreeName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(I)V

    return-void
.end method


# virtual methods
.method protected checkOptionsConsistence()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v2, 0x67

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getEncodeUTF16BE()Z

    move-result v0

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getEncodeUTF16LE()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    :cond_0
    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getExactPacketLength()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v1, "Inconsistent options for exact size serialize"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getPadding()I

    move-result v0

    iget v1, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v1, "Exact size must be a multiple of the Unicode element"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getReadOnlyPacket()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_3

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v1, "Inconsistent options for read-only packet"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    iput v3, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v1, "Inconsistent options for non-packet serialize"

    invoke-direct {v0, v1, v2}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    iput v3, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    :cond_8
    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "Thumbnails"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    iget v1, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_0
.end method

.method public serialize(Lcom/adobe/internal/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/adobe/internal/xmp/options/SerializeOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    :try_start_0
    new-instance v2, Lcom/adobe/internal/xmp/impl/CountOutputStream;

    invoke-direct {v2, p2}, Lcom/adobe/internal/xmp/impl/CountOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/internal/xmp/impl/CountOutputStream;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/internal/xmp/impl/CountOutputStream;

    invoke-virtual {p3}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    check-cast p1, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    iput-object p1, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    iput-object p3, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-virtual {p3}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getPadding()I

    move-result v2

    iput v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->padding:I

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/internal/xmp/impl/CountOutputStream;

    invoke-virtual {p3}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->checkOptionsConsistence()V

    invoke-direct {p0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serializeAsRDF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->addPadding(I)V

    invoke-direct {p0, v1}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/internal/xmp/impl/CountOutputStream;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/CountOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "Error writing to the OutputStream"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
