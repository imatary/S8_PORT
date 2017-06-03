.class abstract Lorg/apache/harmony/xml/ExpatAttributes;
.super Ljava/lang/Object;
.source "ExpatAttributes.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# static fields
.field private static final CDATA:Ljava/lang/String; = "CDATA"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getIndex(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native getIndexForQName(JLjava/lang/String;)I
.end method

.method private static native getLocalName(JJI)Ljava/lang/String;
.end method

.method private static native getQName(JJI)Ljava/lang/String;
.end method

.method private static native getURI(JJI)Ljava/lang/String;
.end method

.method private static native getValue(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getValueByIndex(JI)Ljava/lang/String;
.end method

.method private static native getValueForQName(JLjava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method protected native freeAttributes(J)V
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "qName == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    return v2

    :cond_1
    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndexForQName(JLjava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "uri == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "localName == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    return v2

    :cond_2
    invoke-static {v0, v1, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public abstract getLength()I
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getLocalName(JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method abstract getParserPointer()J
.end method

.method public abstract getPointer()J
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 4

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getQName(JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "CDATA"

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "CDATA"

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "localName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v0, "CDATA"

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 4

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getParserPointer()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getURI(JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getValueByIndex(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "qName == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    return-object v4

    :cond_1
    invoke-static {v0, v1, p1}, Lorg/apache/harmony/xml/ExpatAttributes;->getValueForQName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "uri == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "localName == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->getPointer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    return-object v4

    :cond_2
    invoke-static {v0, v1, p1, p2}, Lorg/apache/harmony/xml/ExpatAttributes;->getValue(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
