.class public Lcom/samsung/android/common/diagmon/bundle/BundleToXML;
.super Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;
.source "BundleToXML.java"

# interfaces
.implements Lcom/samsung/android/common/diagmon/bundle/BundleContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/common/diagmon/bundle/BundleContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;-><init>(Lcom/samsung/android/common/diagmon/bundle/BundleContainer;)V

    return-void
.end method


# virtual methods
.method public toXML()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v1, Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;-><init>(Lcom/samsung/android/common/diagmon/bundle/BundleToXML;Lcom/samsung/android/common/diagmon/bundle/BundleToXML$1;)V

    invoke-static {v1, v0}, Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;->access$102(Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;Lorg/xmlpull/v1/XmlSerializer;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1}, Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;->traverse()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v3

    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v3

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public toXMLWithoutException()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/common/diagmon/bundle/BundleToXML;->toXML()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
