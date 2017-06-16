.class public Lorg/apache/commons/imaging/icc/IccProfileParser;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "IccProfileParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private getIccTagType(I)Lorg/apache/commons/imaging/icc/IccTagType;
    .locals 5

    invoke-static {}, Lorg/apache/commons/imaging/icc/IccTagTypes;->values()[Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/commons/imaging/icc/IccTagType;->getSignature()I

    move-result v4

    if-ne v4, p1, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private readICCProfileInfo(Ljava/io/InputStream;)Lorg/apache/commons/imaging/icc/IccProfileInfo;
    .locals 35

    new-instance v23, Lorg/apache/commons/imaging/icc/CachingInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/icc/CachingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 p1, v23

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_0

    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    :cond_0
    :try_start_0
    const-string v32, "ProfileSize"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    const-string v32, "Signature"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_1

    const-string v32, "CMMTypeSignature"

    move-object/from16 v0, v32

    invoke-static {v0, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_1
    const-string v32, "ProfileVersion"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    const-string v32, "ProfileDeviceClassSignature"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_2

    const-string v32, "ProfileDeviceClassSignature"

    move-object/from16 v0, v32

    invoke-static {v0, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_2
    const-string v32, "ColorSpace"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_3

    const-string v32, "ColorSpace"

    move-object/from16 v0, v32

    invoke-static {v0, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_3
    const-string v32, "ProfileConnectionSpace"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_4

    const-string v32, "ProfileConnectionSpace"

    move-object/from16 v0, v32

    invoke-static {v0, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_4
    const-wide/16 v32, 0xc

    const-string v34, "Not a Valid ICC Profile"

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-string v32, "ProfileFileSignature"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_5

    const-string v32, "ProfileFileSignature"

    move-object/from16 v0, v32

    invoke-static {v0, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_5
    const-string v32, "PrimaryPlatformSignature"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_6

    const-string v32, "PrimaryPlatformSignature"

    move-object/from16 v0, v32

    invoke-static {v0, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_6
    const-string v32, "VariousFlags"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_7

    const-string v32, "VariousFlags"

    move-object/from16 v0, v32

    invoke-static {v0, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_7
    const-string v32, "DeviceManufacturer"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_8

    const-string v32, "DeviceManufacturer"

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_8
    const-string v32, "DeviceModel"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_9

    const-string v32, "DeviceModel"

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_9
    const-wide/16 v32, 0x8

    const-string v34, "Not a Valid ICC Profile"

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-string v32, "RenderingIntent"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_a

    const-string v32, "RenderingIntent"

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_a
    const-wide/16 v32, 0xc

    const-string v34, "Not a Valid ICC Profile"

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-string v32, "ProfileCreatorSignature"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_b

    const-string v32, "ProfileCreatorSignature"

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_b
    const/16 v21, 0x0

    const-wide/16 v32, 0x10

    const-string v34, "Not a Valid ICC Profile"

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-wide/16 v32, 0x1c

    const-string v34, "Not a Valid ICC Profile"

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-string v32, "TagCount"

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [Lorg/apache/commons/imaging/icc/IccTag;

    move-object/from16 v22, v0

    const/16 v27, 0x0

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "TagSignature["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "OffsetToData["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v28

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ElementSize["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    const-string v33, "Not a Valid ICC Profile"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getIccTagType(I)Lorg/apache/commons/imaging/icc/IccTagType;

    move-result-object v26

    new-instance v29, Lorg/apache/commons/imaging/icc/IccTag;

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v28

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/icc/IccTag;-><init>(IIILorg/apache/commons/imaging/icc/IccTagType;)V

    aput-object v29, v22, v27

    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v32

    if-gez v32, :cond_c

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/imaging/icc/CachingInputStream;->getCache()[B

    move-result-object v7

    array-length v0, v7

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v0, v8, :cond_e

    new-instance v32, Ljava/io/IOException;

    const-string v33, "Couldn\'t read ICC Profile."

    invoke-direct/range {v32 .. v33}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v32
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v24

    invoke-static/range {v24 .. v24}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    :cond_d
    :goto_1
    return-object v6

    :cond_e
    :try_start_1
    new-instance v6, Lorg/apache/commons/imaging/icc/IccProfileInfo;

    invoke-direct/range {v6 .. v22}, Lorg/apache/commons/imaging/icc/IccProfileInfo;-><init>([BIIIIIIIIIIIII[B[Lorg/apache/commons/imaging/icc/IccTag;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v32

    if-eqz v32, :cond_d

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "issRGB: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v6}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->issRGB()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getICCProfileInfo(Ljava/awt/color/ICC_Profile;)Lorg/apache/commons/imaging/icc/IccProfileInfo;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getICCProfileInfo(Ljava/io/File;)Lorg/apache/commons/imaging/icc/IccProfileInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getICCProfileInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/icc/IccProfileInfo;
    .locals 11

    const/4 v8, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/commons/imaging/icc/IccProfileParser;->readICCProfileInfo(Ljava/io/InputStream;)Lorg/apache/commons/imaging/icc/IccProfileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_2

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v6, v8

    :cond_1
    :goto_1
    return-object v6

    :catch_0
    move-exception v2

    invoke-static {v2}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v4, 0x0

    invoke-virtual {v6}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->getTags()[Lorg/apache/commons/imaging/icc/IccTag;

    move-result-object v0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v7, v0, v3

    iget v9, v7, Lorg/apache/commons/imaging/icc/IccTag;->offset:I

    iget v10, v7, Lorg/apache/commons/imaging/icc/IccTag;->length:I

    invoke-virtual {p1, v9, v10}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(II)[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/commons/imaging/icc/IccTag;->setData([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-static {v2}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_4
    invoke-static {v2}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    :cond_5
    move-object v6, v8

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-static {v2}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v8

    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_4
    throw v8

    :catch_4
    move-exception v2

    invoke-static {v2}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public getICCProfileInfo([B)Lorg/apache/commons/imaging/icc/IccProfileInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public issRGB(Ljava/awt/color/ICC_Profile;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->issRGB(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z

    move-result v0

    return v0
.end method

.method public issRGB(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->issRGB(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z

    move-result v0

    return v0
.end method

.method public issRGB(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v7, "ProfileSize"

    const-string v8, "Not a Valid ICC Profile"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-static {v7, v3, v8, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    const-wide/16 v8, 0x14

    invoke-static {v3, v8, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-wide/16 v8, 0xc

    const-string v7, "Not a Valid ICC Profile"

    invoke-static {v3, v8, v9, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-wide/16 v8, 0xc

    invoke-static {v3, v8, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v7, "ProfileFileSignature"

    const-string v8, "Not a Valid ICC Profile"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-static {v7, v3, v8, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "DeviceManufacturer"

    invoke-static {v7, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_1
    const-string v7, "DeviceModel"

    const-string v8, "Not a Valid ICC Profile"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-static {v7, v3, v8, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "DeviceModel"

    invoke-static {v7, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const v7, 0x49454320    # 807986.0f

    if-ne v1, v7, :cond_3

    const v7, 0x73524742

    if-ne v2, v7, :cond_3

    move v4, v5

    :goto_0
    const/4 v0, 0x1

    new-array v5, v5, [Ljava/io/Closeable;

    aput-object v3, v5, v6

    invoke-static {v0, v5}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return v4

    :cond_3
    move v4, v6

    goto :goto_0

    :catchall_0
    move-exception v7

    new-array v5, v5, [Ljava/io/Closeable;

    aput-object v3, v5, v6

    invoke-static {v0, v5}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v7
.end method

.method public issRGB([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->issRGB(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z

    move-result v0

    return v0
.end method
