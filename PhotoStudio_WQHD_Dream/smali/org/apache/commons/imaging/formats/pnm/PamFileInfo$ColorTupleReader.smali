.class Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;
.super Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorTupleReader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;


# direct methods
.method private constructor <init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)V

    return-void
.end method


# virtual methods
.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I
    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v4

    invoke-static {p1, v4}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I
    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v4

    invoke-static {p1, v4}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v2

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I
    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v4

    invoke-static {p1, v4}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v1

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F
    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I
    invoke-static {v5}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F
    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I
    invoke-static {v5}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v5

    invoke-static {v2, v4, v5}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result v2

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F
    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I
    invoke-static {v5}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v5

    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result v1

    const/16 v0, 0xff

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->hasAlpha:Z
    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$500(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->bytesPerSample:I
    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v4

    invoke-static {p1, v4}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v0

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->scale:F
    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    # getter for: Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->maxval:I
    invoke-static {v5}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v5

    invoke-static {v0, v4, v5}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result v0

    :cond_0
    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v4, v5

    return v4
.end method
