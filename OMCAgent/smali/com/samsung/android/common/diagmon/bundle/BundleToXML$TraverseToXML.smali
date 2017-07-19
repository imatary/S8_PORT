.class Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;
.super Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;
.source "BundleToXML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/diagmon/bundle/BundleToXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TraverseToXML"
.end annotation


# instance fields
.field private serializer:Lorg/xmlpull/v1/XmlSerializer;

.field final synthetic this$0:Lcom/samsung/android/common/diagmon/bundle/BundleToXML;


# direct methods
.method private constructor <init>(Lcom/samsung/android/common/diagmon/bundle/BundleToXML;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;->this$0:Lcom/samsung/android/common/diagmon/bundle/BundleToXML;

    invoke-direct {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl$TraverseHelper;-><init>(Lcom/samsung/android/common/diagmon/bundle/BundleContainerImpl;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/common/diagmon/bundle/BundleToXML;Lcom/samsung/android/common/diagmon/bundle/BundleToXML$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;-><init>(Lcom/samsung/android/common/diagmon/bundle/BundleToXML;)V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;Lorg/xmlpull/v1/XmlSerializer;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    return-object p1
.end method


# virtual methods
.method public traverse(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;->traverse(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public traverse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/bundle/BundleToXML$TraverseToXML;->serializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
