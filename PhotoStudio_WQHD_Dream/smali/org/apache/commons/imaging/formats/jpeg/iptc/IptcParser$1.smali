.class Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser$1;
.super Ljava/lang/Object;
.source "IptcParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->writeIPTCBlock(Ljava/util/List;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser$1;->this$0:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;

    check-cast p2, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser$1;->compare(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;)I
    .locals 2

    iget-object v0, p2, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
