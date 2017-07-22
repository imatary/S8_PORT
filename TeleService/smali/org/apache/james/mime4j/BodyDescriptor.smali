.class public Lorg/apache/james/mime4j/BodyDescriptor;
.super Ljava/lang/Object;
.source "BodyDescriptor.java"


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# instance fields
.field private boundary:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private contentTransferEncSet:Z

.field private contentTypeSet:Z

.field private mimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/james/mime4j/BodyDescriptor;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/BodyDescriptor;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/BodyDescriptor;-><init>(Lorg/apache/james/mime4j/BodyDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "text/plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    const-string/jumbo v0, "us-ascii"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->charset:Ljava/lang/String;

    const-string/jumbo v0, "7bit"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    iput-boolean v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    iput-boolean v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    if-eqz p1, :cond_0

    const-string/jumbo v0, "multipart/digest"

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "message/rfc822"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "text/plain"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method private getHeaderParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v21, ";"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    move-object/from16 v15, p1

    const/16 v18, 0x0

    :goto_0
    const-string/jumbo v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v9, 0x5

    const/16 v3, 0x63

    const/16 v20, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_1
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_9

    aget-char v10, v11, v14

    sparse-switch v20, :sswitch_data_0

    :cond_0
    :goto_2
    :sswitch_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v21, ";"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    :sswitch_1
    const/16 v21, 0x3b

    move/from16 v0, v21

    if-ne v10, v0, :cond_0

    const/16 v20, 0x0

    goto :goto_2

    :sswitch_2
    const/16 v21, 0x3d

    move/from16 v0, v21

    if-ne v10, v0, :cond_2

    sget-object v21, Lorg/apache/james/mime4j/BodyDescriptor;->log:Lorg/apache/james/mime4j/Log;

    const-string/jumbo v22, "Expected header param name, got \'=\'"

    invoke-virtual/range {v21 .. v22}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    const/16 v20, 0x63

    goto :goto_2

    :cond_2
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v20, 0x1

    :sswitch_3
    const/16 v21, 0x3d

    move/from16 v0, v21

    if-ne v10, v0, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    if-nez v21, :cond_3

    const/16 v20, 0x63

    goto :goto_2

    :cond_3
    const/16 v20, 0x2

    goto :goto_2

    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_4
    const/4 v13, 0x0

    sparse-switch v10, :sswitch_data_1

    const/16 v20, 0x3

    const/4 v13, 0x1

    :goto_3
    :sswitch_5
    if-eqz v13, :cond_0

    :sswitch_6
    const/4 v13, 0x0

    sparse-switch v10, :sswitch_data_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    if-eqz v13, :cond_0

    :sswitch_7
    sparse-switch v10, :sswitch_data_3

    const/16 v20, 0x63

    goto :goto_2

    :sswitch_8
    const/16 v20, 0x4

    goto :goto_3

    :sswitch_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x5

    const/4 v13, 0x1

    goto :goto_4

    :sswitch_a
    const/16 v20, 0x0

    goto/16 :goto_2

    :sswitch_b
    sparse-switch v10, :sswitch_data_4

    if-eqz v12, :cond_5

    const/16 v21, 0x5c

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :sswitch_c
    if-nez v12, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x5

    goto/16 :goto_2

    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :sswitch_d
    if-eqz v12, :cond_7

    const/16 v21, 0x5c

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    if-eqz v12, :cond_8

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_9
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v19

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_6
        0x4 -> :sswitch_b
        0x5 -> :sswitch_7
        0x63 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_9
        0x20 -> :sswitch_9
        0x3b -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x3b -> :sswitch_a
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v11, "content-transfer-encoding"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    if-eqz v11, :cond_2

    :cond_0
    const-string/jumbo v11, "content-type"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    if-eqz v11, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    iput-object p2, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v3, v11, :cond_6

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v11, 0xd

    if-eq v1, v11, :cond_4

    const/16 v11, 0xa

    if-ne v1, v11, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/james/mime4j/BodyDescriptor;->getHeaderParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v11, ""

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x2f

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eq v4, v11, :cond_7

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    :cond_7
    if-nez v10, :cond_8

    const/4 v5, 0x0

    :cond_8
    const-string/jumbo v11, "boundary"

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v5, :cond_a

    const-string/jumbo v11, "multipart/"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    if-eqz v0, :cond_d

    :cond_9
    iput-object v5, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    :cond_a
    :goto_3
    invoke-virtual {p0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMultipart()Z

    move-result v11

    if-eqz v11, :cond_b

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    :cond_b
    const-string/jumbo v11, "charset"

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->charset:Ljava/lang/String;

    :cond_c
    iget-object v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string/jumbo v12, ""

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string/jumbo v12, "boundary"

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string/jumbo v12, "charset"

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v11, "multipart/"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public isBase64Encoded()Z
    .locals 2

    const-string/jumbo v0, "base64"

    iget-object v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMessage()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "message/rfc822"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isQuotedPrintableEncoded()Z
    .locals 2

    const-string/jumbo v0, "quoted-printable"

    iget-object v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method
