.class public Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;
.super Lorg/apache/commons/imaging/common/GenericImageMetadata;
.source "JpegPhotoshopMetadata.java"


# instance fields
.field public final photoshopApp13Data:Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 5

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;->photoshopApp13Data:Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;

    iget-object v3, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    sget-object v4, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->RECORD_VERSION:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->getIptcTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    return-void
.end method
