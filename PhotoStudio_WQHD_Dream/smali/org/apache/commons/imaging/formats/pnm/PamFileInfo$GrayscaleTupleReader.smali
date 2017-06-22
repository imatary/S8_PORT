.class Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;
.super Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GrayscaleTupleReader"
.end annotation


# instance fields
.field private final colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field final synthetic this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/ImageInfo$ColorType;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$1;)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-void
.end method


# virtual methods
.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I
    invoke-static {v2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v2

    invoke-static {p1, v2}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F
    invoke-static {v2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I
    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result v1

    const/16 v0, 0xff

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->hasAlpha:Z
    invoke-static {v2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$500(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I
    invoke-static {v2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v2

    invoke-static {p1, v2}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F
    invoke-static {v2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I
    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result v0

    :cond_0
    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x18

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x0

    or-int/2addr v2, v3

    return v2
.end method
