.class public final Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;
.super Ljava/lang/Object;
.source "TiffOutputSet.java"


# static fields
.field private static final NEWLINE:Ljava/lang/String;


# instance fields
.field public final byteOrder:Ljava/nio/ByteOrder;

.field private final directories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffConstants;->DEFAULT_TIFF_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method public addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v1, "Output set already contains a directory of that type."

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    const/4 v1, -0x2

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;-><init>(ILjava/nio/ByteOrder;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    return-object v0
.end method

.method public addGPSDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    const/4 v1, -0x3

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;-><init>(ILjava/nio/ByteOrder;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    return-object v0
.end method

.method public addInteroperabilityDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOrCreateExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    const/4 v1, -0x4

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;-><init>(ILjava/nio/ByteOrder;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    return-object v0
.end method

.method public addRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;-><init>(ILjava/nio/ByteOrder;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    return-object v0
.end method

.method public dump()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 3

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 4

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v0

    return-object v0
.end method

.method public getDirectories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    return-object v0
.end method

.method public getGPSDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    return-object v0
.end method

.method public getInteroperabilityDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    const/4 v0, -0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOrCreateRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrCreateGPSDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOrCreateExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    const/4 v1, -0x3

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addGPSDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrCreateRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    goto :goto_0
.end method

.method protected getOutputItems(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getOutputItems(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    return-object v0
.end method

.method public removeField(I)V
    .locals 3

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V
    .locals 1

    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->removeField(I)V

    return-void
.end method

.method public setGPSInDegrees(DD)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOrCreateGPSDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v2

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_VERSION_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    invoke-virtual {v2, v15}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_VERSION_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    invoke-static {}, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->gpsVersion()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v15, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;[B)V

    const-wide/16 v20, 0x0

    cmpg-double v15, p1, v20

    if-gez v15, :cond_0

    const-string v14, "W"

    :goto_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/16 v20, 0x0

    cmpg-double v15, p3, v20

    if-gez v15, :cond_1

    const-string v3, "S"

    :goto_1
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    invoke-virtual {v2, v15}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v14, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v2, v15, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;[Ljava/lang/String;)V

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    invoke-virtual {v2, v15}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v2, v15, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;[Ljava/lang/String;)V

    move-wide/from16 v18, p1

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v10, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    rem-double v18, v18, v20

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v12, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    rem-double v18, v18, v20

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    mul-double v18, v18, v20

    move-wide/from16 v16, v18

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v2, v15}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v10, v11}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v12, v13}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v2, v15, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    move-wide/from16 v18, p3

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v4, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    rem-double v18, v18, v20

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v6, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    rem-double v18, v18, v20

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    mul-double v18, v18, v20

    move-wide/from16 v8, v18

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v2, v15}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    sget-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Lorg/apache/commons/imaging/common/RationalNumber;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4, v5}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v6, v7}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v8, v9}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v2, v15, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void

    :cond_0
    const-string v14, "E"

    goto/16 :goto_0

    :cond_1
    const-string v3, "N"

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x27

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "TiffOutputSet {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "byteOrder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    const-string v6, "%s\tdirectory %d: %s (%d)%n"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->description()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t\tfield "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
