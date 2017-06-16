.class public Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;
.super Ljava/lang/Object;
.source "IptcBlock.java"


# instance fields
.field final blockData:[B

.field final blockNameBytes:[B

.field public final blockType:I


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    return-void
.end method


# virtual methods
.method public isIPTCBlock()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    const/16 v1, 0x404

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
