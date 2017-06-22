.class public Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "DhtSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;
    }
.end annotation


# instance fields
.field public final huffmanTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez p2, :cond_2

    const-string v8, "TableClassAndDestinationId"

    const-string v9, "Not a Valid JPEG File"

    invoke-static {v8, p3, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v7, v8, 0xff

    add-int/lit8 p2, p2, -0x1

    shr-int/lit8 v8, v7, 0x4

    and-int/lit8 v6, v8, 0xf

    and-int/lit8 v2, v7, 0xf

    const/16 v8, 0x11

    new-array v0, v8, [I

    const/4 v1, 0x0

    const/4 v5, 0x1

    :goto_1
    array-length v8, v0

    if-ge v5, v8, :cond_0

    const-string v8, "Li"

    const-string v9, "Not a Valid JPEG File"

    invoke-static {v8, p3, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v0, v5

    add-int/lit8 p2, p2, -0x1

    aget v8, v0, v5

    add-int/2addr v1, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    new-array v3, v1, [I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_1

    const-string v8, "Vij"

    const-string v9, "Not a Valid JPEG File"

    invoke-static {v8, p3, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v3, v5

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    new-instance v8, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;

    invoke-direct {v8, v6, v2, v0, v3}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;-><init>(II[I[I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;->huffmanTables:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DHT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;->getSegmentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
