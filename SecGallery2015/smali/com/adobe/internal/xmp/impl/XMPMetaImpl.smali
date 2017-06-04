.class public Lcom/adobe/internal/xmp/impl/XMPMetaImpl;
.super Ljava/lang/Object;
.source "XMPMetaImpl.java"

# interfaces
.implements Lcom/adobe/internal/xmp/XMPMeta;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private packetHeader:Ljava/lang/String;

.field private tree:Lcom/adobe/internal/xmp/impl/XMPNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-direct {v0, v1, v1, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    iput-object p1, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    return-void
.end method

.method private evaluateNodeValue(ILcom/adobe/internal/xmp/impl/XMPNode;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2

    :pswitch_0
    new-instance v2, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/adobe/internal/xmp/XMPUtils;->convertToBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/adobe/internal/xmp/XMPUtils;->convertToInteger(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Ljava/lang/Long;

    invoke-static {v1}, Lcom/adobe/internal/xmp/XMPUtils;->convertToLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :pswitch_3
    new-instance v2, Ljava/lang/Double;

    invoke-static {v1}, Lcom/adobe/internal/xmp/XMPUtils;->convertToDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :pswitch_4
    invoke-static {v1}, Lcom/adobe/internal/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/internal/xmp/XMPDateTime;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    invoke-static {v1}, Lcom/adobe/internal/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/internal/xmp/XMPDateTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/internal/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    goto :goto_0

    :pswitch_6
    invoke-static {v1}, Lcom/adobe/internal/xmp/XMPUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ""

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    new-instance v1, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    invoke-direct {v1, v0}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;-><init>(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    return-object v1
.end method

.method public doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/xpath/XMPPath;

    move-result-object v1

    iget-object v4, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v1, v5, v6}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/xpath/XMPPath;ZLcom/adobe/internal/xmp/options/PropertyOptions;)Lcom/adobe/internal/xmp/impl/XMPNode;
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/xpath/XMPPath;

    move-result-object v0

    iget-object v3, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/xpath/XMPPath;ZLcom/adobe/internal/xmp/options/PropertyOptions;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "Property must be simple when a value type is requested"

    const/16 v4, 0x66

    invoke-direct {v2, v3, v4}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    invoke-direct {p0, p3, v1}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->evaluateNodeValue(ILcom/adobe/internal/xmp/impl/XMPNode;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    return-object v0
.end method

.method public setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSpecificLang(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/adobe/internal/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/adobe/internal/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p1 .. p2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/xpath/XMPPath;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    const/4 v13, 0x1

    new-instance v14, Lcom/adobe/internal/xmp/options/PropertyOptions;

    const/16 v15, 0x1e00

    invoke-direct {v14, v15}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>(I)V

    invoke-static {v12, v3, v13, v14}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/xpath/XMPPath;ZLcom/adobe/internal/xmp/options/PropertyOptions;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v12, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v13, "Failed to find or create array node"

    const/16 v14, 0x66

    invoke-direct {v12, v13, v14}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    :cond_0
    const/16 p3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    :cond_2
    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "xml:lang"

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_4
    new-instance v12, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v13, "Language qualifier must be first"

    const/16 v14, 0x66

    invoke-direct {v12, v13, v14}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    :cond_5
    new-instance v12, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v13, "Specified property is no alt-text array"

    const/16 v14, 0x66

    invoke-direct {v12, v13, v14}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    :cond_6
    const-string/jumbo v12, "x-default"

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v11, v4

    const/4 v5, 0x1

    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_8

    invoke-virtual {v2, v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->removeChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    const/4 v12, 0x1

    invoke-virtual {v2, v12, v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(ILcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_8
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v2, v0, v1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->chooseLocalizedText(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v9

    const/4 v12, 0x0

    aget-object v12, v9, v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v12, 0x1

    aget-object v7, v9, v12

    check-cast v7, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v12, "x-default"

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    packed-switch v8, :pswitch_data_0

    new-instance v12, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v13, "Unexpected result from ChooseLocalizedText"

    const/16 v14, 0x9

    invoke-direct {v12, v13, v14}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v12

    :pswitch_0
    const-string/jumbo v12, "x-default"

    move-object/from16 v0, p5

    invoke-static {v2, v12, v0}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-nez v10, :cond_9

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    if-nez v5, :cond_a

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    const-string/jumbo v12, "x-default"

    move-object/from16 v0, p5

    invoke-static {v2, v12, v0}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void

    :pswitch_1
    if-nez v10, :cond_c

    if-eqz v5, :cond_b

    if-eq v11, v7, :cond_b

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    sget-boolean v12, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->$assertionsDisabled:Z

    if-nez v12, :cond_e

    if-eqz v5, :cond_d

    if-eq v11, v7, :cond_e

    :cond_d
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_e
    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/internal/xmp/impl/XMPNode;

    if-eq v4, v11, :cond_f

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    const/4 v12, 0x0

    goto :goto_3

    :cond_11
    if-eqz v11, :cond_9

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    if-eqz v5, :cond_12

    if-eq v11, v7, :cond_12

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_9

    const/4 v5, 0x1

    goto/16 :goto_1

    :pswitch_4
    if-eqz v11, :cond_13

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v2, v0, v1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_9

    const/4 v5, 0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method setNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/16 v3, 0x66

    const/16 v0, 0x1f00

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->clear()V

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/adobe/internal/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    invoke-static {p1, p2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->setNodeValue(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v2, "Composite nodes can\'t have values"

    invoke-direct {v1, v2, v3}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    and-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getOptions()I

    move-result v2

    and-int/2addr v2, v0

    if-eq v1, v2, :cond_3

    new-instance v1, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v2, "Requested and existing composite form mismatch"

    invoke-direct {v1, v2, v3}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->removeChildren()V

    goto :goto_0
.end method

.method public setPacketHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->packetHeader:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-static {p1}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/adobe/internal/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p4, p3}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/internal/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object p4

    invoke-static {p1, p2}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/xpath/XMPPath;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, p4}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/xpath/XMPPath;ZLcom/adobe/internal/xmp/options/PropertyOptions;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p3, p4, v2}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/internal/xmp/options/PropertyOptions;Z)V

    return-void

    :cond_0
    new-instance v2, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v3, "Specified property does not exist"

    const/16 v4, 0x66

    invoke-direct {v2, v3, v4}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public sort()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->sort()V

    return-void
.end method
