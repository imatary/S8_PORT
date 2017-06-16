.class public Lorg/apache/commons/imaging/ImageDump;
.super Ljava/lang/Object;
.source "ImageDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private colorSpaceTypeToName(Ljava/awt/color/ColorSpace;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "TYPE_CMYK"

    goto :goto_0

    :sswitch_1
    const-string v0, "TYPE_RGB"

    goto :goto_0

    :sswitch_2
    const-string v0, "CS_sRGB"

    goto :goto_0

    :sswitch_3
    const-string v0, "CS_GRAY"

    goto :goto_0

    :sswitch_4
    const-string v0, "CS_CIEXYZ"

    goto :goto_0

    :sswitch_5
    const-string v0, "CS_LINEAR_RGB"

    goto :goto_0

    :sswitch_6
    const-string v0, "CS_PYCC"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_6
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public dump(Ljava/awt/image/BufferedImage;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/imaging/ImageDump;->dump(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ImageDump;->dumpColorSpace(Ljava/lang/String;Ljava/awt/color/ColorSpace;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ImageDump;->dumpBIProps(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public dumpBIProps(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V
    .locals 8

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getPropertyNames()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": no props"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, v3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2, v2}, Ljava/awt/image/BufferedImage;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dumpColorSpace(Ljava/lang/String;Ljava/awt/color/ColorSpace;)V
    .locals 8

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/ImageDump;->colorSpaceTypeToName(Ljava/awt/color/ColorSpace;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    instance-of v5, p2, Ljava/awt/color/ICC_ColorSpace;

    if-nez v5, :cond_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Unknown ColorSpace: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v1}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object v0

    new-instance v4, Lorg/apache/commons/imaging/icc/IccProfileParser;

    invoke-direct {v4}, Lorg/apache/commons/imaging/icc/IccProfileParser;-><init>()V

    invoke-virtual {v4, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getICCProfileInfo([B)Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->dump(Ljava/lang/String;)V

    goto :goto_0
.end method
