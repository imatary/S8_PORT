.class public Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;
.super Ljava/lang/Object;
.source "PhotoshopApp13Data.java"


# instance fields
.field private final rawBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->rawBlocks:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->records:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getNonIptcBlocks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->rawBlocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->isIPTCBlock()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getRawBlocks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->rawBlocks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->records:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
