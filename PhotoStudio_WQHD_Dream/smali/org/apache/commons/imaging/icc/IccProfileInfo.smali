.class public Lorg/apache/commons/imaging/icc/IccProfileInfo;
.super Ljava/lang/Object;
.source "IccProfileInfo.java"


# instance fields
.field public final cmmTypeSignature:I

.field public final colorSpace:I

.field private final data:[B

.field public final deviceManufacturer:I

.field public final deviceModel:I

.field public final primaryPlatformSignature:I

.field public final profileConnectionSpace:I

.field public final profileCreatorSignature:I

.field public final profileDeviceClassSignature:I

.field public final profileFileSignature:I

.field private final profileId:[B

.field public final profileSize:I

.field public final profileVersion:I

.field public final renderingIntent:I

.field private final tags:[Lorg/apache/commons/imaging/icc/IccTag;

.field public final variousFlags:I


# direct methods
.method public constructor <init>([BIIIIIIIIIIIII[B[Lorg/apache/commons/imaging/icc/IccTag;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->data:[B

    iput p2, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileSize:I

    iput p3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->cmmTypeSignature:I

    iput p4, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileVersion:I

    iput p5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileDeviceClassSignature:I

    iput p6, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->colorSpace:I

    iput p7, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileConnectionSpace:I

    iput p8, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileFileSignature:I

    iput p9, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->primaryPlatformSignature:I

    iput p10, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->variousFlags:I

    iput p11, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceManufacturer:I

    iput p12, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceModel:I

    iput p13, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->renderingIntent:I

    iput p14, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileCreatorSignature:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileId:[B

    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->tags:[Lorg/apache/commons/imaging/icc/IccTag;

    return-void
.end method

.method private printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->data:[B

    return-object v0
.end method

.method public getProfileId()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileId:[B

    return-object v0
.end method

.method public getTags()[Lorg/apache/commons/imaging/icc/IccTag;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->tags:[Lorg/apache/commons/imaging/icc/IccTag;

    return-object v0
.end method

.method public issRGB()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceManufacturer:I

    const v1, 0x49454320    # 807986.0f

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceModel:I

    const v1, 0x73524742

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "IccProfileInfo: Error"

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->data:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ProfileDeviceClassSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileDeviceClassSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CMMTypeSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->cmmTypeSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ProfileDeviceClassSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileDeviceClassSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ColorSpace"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->colorSpace:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ProfileConnectionSpace"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileConnectionSpace:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ProfileFileSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileFileSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PrimaryPlatformSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->primaryPlatformSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ProfileFileSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileFileSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceManufacturer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceManufacturer:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DeviceModel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceModel:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "RenderingIntent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->renderingIntent:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ProfileCreatorSignature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileCreatorSignature:I

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->tags:[Lorg/apache/commons/imaging/icc/IccTag;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->tags:[Lorg/apache/commons/imaging/icc/IccTag;

    aget-object v3, v4, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/apache/commons/imaging/icc/IccTag;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "issRGB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->issRGB()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
