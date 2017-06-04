.class public Lcom/samsung/android/common/util/Xpath;
.super Ljava/lang/Object;
.source "Xpath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttributes(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NamedNodeMap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v3

    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, p1, v1, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/StringReader;->close()V

    throw v4
.end method

.method public static getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "XML is empty"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Lorg/xml/sax/InputSource;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/StringReader;->close()V

    throw v3
.end method
