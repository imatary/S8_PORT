.class public Lcom/adobe/internal/xmp/impl/xpath/XMPPath;
.super Ljava/lang/Object;
.source "XMPPath.java"


# instance fields
.field private segments:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->segments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;)V
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSegment(I)Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/adobe/internal/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    :cond_0
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
