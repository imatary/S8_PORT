.class public Lcom/adobe/internal/xmp/impl/XMPSerializerHelper;
.super Ljava/lang/Object;
.source "XMPSerializerHelper.java"


# direct methods
.method public static serialize(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/adobe/internal/xmp/options/SerializeOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p2}, Lcom/adobe/internal/xmp/options/SerializeOptions;->getSort()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->sort()V

    :cond_0
    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;

    invoke-direct {v0}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/adobe/internal/xmp/impl/XMPSerializerRDF;->serialize(Lcom/adobe/internal/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/adobe/internal/xmp/options/SerializeOptions;)V

    return-void

    :cond_1
    new-instance p2, Lcom/adobe/internal/xmp/options/SerializeOptions;

    invoke-direct {p2}, Lcom/adobe/internal/xmp/options/SerializeOptions;-><init>()V

    goto :goto_0
.end method

.method public static serializeToBuffer(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/options/SerializeOptions;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0, v0, p1}, Lcom/adobe/internal/xmp/impl/XMPSerializerHelper;->serialize(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/adobe/internal/xmp/options/SerializeOptions;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
