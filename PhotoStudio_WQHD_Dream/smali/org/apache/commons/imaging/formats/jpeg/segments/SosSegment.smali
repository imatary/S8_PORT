.class public Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.source "SosSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;
    }
.end annotation


# instance fields
.field private final components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

.field public final endOfSpectralSelection:I

.field public final numberOfComponents:I

.field public final startOfSpectralSelection:I

.field public final successiveApproximationBitHigh:I

.field public final successiveApproximationBitLow:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;-><init>(II)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SosSegment marker_length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-string v6, "number_of_components_in_scan"

    const-string v7, "Not a Valid JPEG File"

    invoke-static {v6, p3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    iput v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    iget v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    new-array v6, v6, [Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    iput-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->numberOfComponents:I

    if-ge v3, v6, :cond_1

    const-string v6, "scanComponentSelector"

    const-string v7, "Not a Valid JPEG File"

    invoke-static {v6, p3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    const-string v6, "acDcEntropoyCodingTableSelector"

    const-string v7, "Not a Valid JPEG File"

    invoke-static {v6, p3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v2, v6, 0xf

    and-int/lit8 v0, v1, 0xf

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    new-instance v7, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    invoke-direct {v7, v4, v2, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;-><init>(III)V

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "start_of_spectral_selection"

    const-string v7, "Not a Valid JPEG File"

    invoke-static {v6, p3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    iput v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->startOfSpectralSelection:I

    const-string v6, "end_of_spectral_selection"

    const-string v7, "Not a Valid JPEG File"

    invoke-static {v6, p3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    iput v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->endOfSpectralSelection:I

    const-string v6, "successive_approximation_bit_position"

    const-string v7, "Not a Valid JPEG File"

    invoke-static {v6, p3, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    iput v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->successiveApproximationBitHigh:I

    and-int/lit8 v6, v5, 0xf

    iput v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->successiveApproximationBitLow:I

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
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

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public getComponents(I)Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getComponents()[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->components:[Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment$Component;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOS ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/SosSegment;->getSegmentType()Ljava/lang/String;

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
