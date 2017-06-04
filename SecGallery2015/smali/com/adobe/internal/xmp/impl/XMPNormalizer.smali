.class public Lcom/adobe/internal/xmp/impl/XMPNormalizer;
.super Ljava/lang/Object;
.source "XMPNormalizer.java"


# static fields
.field private static dcArrayForms:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->initDCArrays()V

    return-void
.end method

.method private static compareAliasedSubtrees(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/16 v9, 0xcb

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v6

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    new-instance v6, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v7, "Mismatch between alias and base nodes"

    invoke-direct {v6, v7, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    :cond_1
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/adobe/internal/xmp/options/PropertyOptions;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v6

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v7

    if-eq v6, v7, :cond_3

    :cond_2
    new-instance v6, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v7, "Mismatch between alias and base nodes"

    invoke-direct {v6, v7, v9}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v6

    :cond_3
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-static {v0, v3, v8}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-static {v1, v4, v8}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;Z)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static deleteEmptySchemas(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static fixGPSTimeStamp(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v7, 0x0

    const-string/jumbo v6, "exif:GPSTimeStamp"

    invoke-static {p0, v6, v7}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/internal/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/internal/xmp/XMPDateTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/internal/xmp/XMPDateTime;->getYear()I

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v0}, Lcom/adobe/internal/xmp/XMPDateTime;->getMonth()I

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v0}, Lcom/adobe/internal/xmp/XMPDateTime;->getDay()I

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "exif:DateTimeOriginal"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v6, "exif:DateTimeDigitized"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/internal/xmp/XMPUtils;->convertToDate(Ljava/lang/String;)Lcom/adobe/internal/xmp/XMPDateTime;

    move-result-object v1

    invoke-interface {v0}, Lcom/adobe/internal/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v1}, Lcom/adobe/internal/xmp/XMPDateTime;->getYear()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x2

    invoke-interface {v1}, Lcom/adobe/internal/xmp/XMPDateTime;->getMonth()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v6, 0x5

    invoke-interface {v1}, Lcom/adobe/internal/xmp/XMPDateTime;->getDay()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0, v2}, Lcom/adobe/internal/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/util/Calendar;)V

    invoke-static {v0}, Lcom/adobe/internal/xmp/XMPUtils;->convertFromDate(Lcom/adobe/internal/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static initDCArrays()V
    .locals 6

    const/4 v5, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    new-instance v1, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v1, v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    sget-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v4, "dc:contributor"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v4, "dc:language"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v4, "dc:publisher"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v4, "dc:relation"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v4, "dc:subject"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v4, "dc:type"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {v2}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v2, v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {v2, v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    sget-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v4, "dc:creator"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v4, "dc:date"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v0, v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {v0, v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {v0, v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {v0, v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    sget-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v4, "dc:description"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v4, "dc:rights"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    const-string/jumbo v4, "dc:title"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static migrateAudioCopyright(Lcom/adobe/internal/xmp/XMPMeta;Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 21

    :try_start_0
    move-object/from16 v0, p0

    check-cast v0, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    const-string/jumbo v2, "http://purl.org/dc/elements/1.1/"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v18, "\n\n"

    const-string/jumbo v1, "dc:rights"

    const/4 v2, 0x0

    invoke-static {v15, v1, v2}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v3, "rights"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "x-default"

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-interface/range {v1 .. v7}, Lcom/adobe/internal/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getParent()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->removeChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v1, "x-default"

    invoke-static {v14, v1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v8, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v9, "rights"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "x-default"

    const/4 v13, 0x0

    move-object/from16 v7, p0

    invoke-interface/range {v7 .. v13}, Lcom/adobe/internal/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    const-string/jumbo v1, "x-default"

    invoke-static {v14, v1}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v20

    :cond_3
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_4

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v19, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v19, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/internal/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private static moveExplicitAliases(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/options/ParseOptions;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getHasAliases()Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->setHasAliases(Z)V

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/options/ParseOptions;->getStrictAliasing()Z

    move-result v9

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getUnmodifiableChildren()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v3}, Lcom/adobe/internal/xmp/impl/XMPNode;->getHasAliases()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->isAlias()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->setAlias(Z)V

    invoke-static {}, Lcom/adobe/internal/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/internal/xmp/XMPSchemaRegistry;

    move-result-object v11

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/adobe/internal/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/adobe/internal/xmp/properties/XMPAliasInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/adobe/internal/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {p0, v11, v12, v13}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->setImplicit(Z)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/adobe/internal/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Lcom/adobe/internal/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v1, v11, v12}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {v4}, Lcom/adobe/internal/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/internal/xmp/options/AliasOptions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adobe/internal/xmp/options/AliasOptions;->isSimple()Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/adobe/internal/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Lcom/adobe/internal/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/adobe/internal/xmp/properties/XMPAliasInfo;->getPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Lcom/adobe/internal/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Lcom/adobe/internal/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/internal/xmp/options/AliasOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/internal/xmp/options/AliasOptions;->toPropertyOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v1, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-static {v6, v2, v0}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto/16 :goto_1

    :cond_5
    invoke-interface {v4}, Lcom/adobe/internal/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/internal/xmp/options/AliasOptions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adobe/internal/xmp/options/AliasOptions;->isSimple()Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v9, :cond_6

    const/4 v11, 0x1

    invoke-static {v2, v0, v11}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;Z)V

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    :cond_7
    const/4 v5, 0x0

    invoke-interface {v4}, Lcom/adobe/internal/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/internal/xmp/options/AliasOptions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adobe/internal/xmp/options/AliasOptions;->isArrayAltText()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string/jumbo v11, "x-default"

    invoke-static {v0, v11}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    invoke-virtual {v0, v10}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v5

    :cond_8
    :goto_2
    if-nez v5, :cond_a

    invoke-static {v6, v2, v0}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->hasChildren()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v5

    goto :goto_2

    :cond_a
    if-eqz v9, :cond_b

    const/4 v11, 0x1

    invoke-static {v2, v5, v11}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->compareAliasedSubtrees(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;Z)V

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    :cond_c
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/adobe/internal/xmp/impl/XMPNode;->setHasAliases(Z)V

    goto/16 :goto_0
.end method

.method private static normalizeDCArrays(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v5

    if-gt v2, v5, :cond_3

    invoke-virtual {p0, v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    sget-object v5, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->dcArrayForms:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/internal/xmp/options/PropertyOptions;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isSimple()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v3, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    const-string/jumbo v5, "[]"

    invoke-virtual {v1, v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-virtual {p0, v2, v3}, Lcom/adobe/internal/xmp/impl/XMPNode;->replaceChild(ILcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v4, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v5, "xml:lang"

    const-string/jumbo v6, "x-default"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v1, v4}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v5

    const/16 v6, 0x1e00

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setOption(IZ)V

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method static process(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;Lcom/adobe/internal/xmp/options/ParseOptions;)Lcom/adobe/internal/xmp/XMPMeta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {p0}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->touchUpDataModel(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;)V

    invoke-static {v0, p1}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->moveExplicitAliases(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/options/ParseOptions;)V

    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->tweakOldXMP(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->deleteEmptySchemas(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    return-object p0
.end method

.method private static repairAltText(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v5, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArray()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    new-instance v3, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v4, "xml:lang"

    const-string/jumbo v5, "x-repair"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v1, v3}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method private static touchUpDataModel(Lcom/adobe/internal/xmp/impl/XMPMetaImpl;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v8

    const-string/jumbo v9, "http://purl.org/dc/elements/1.1/"

    invoke-static {v8, v9, v11}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v8, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v2}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->normalizeDCArrays(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "http://ns.adobe.com/exif/1.0/"

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v2}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->fixGPSTimeStamp(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    const-string/jumbo v8, "exif:UserComment"

    invoke-static {v2, v8, v12}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isSimple()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v6, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v8, "[]"

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-direct {v6, v8, v9, v10}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v6, v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->setParent(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v0

    :goto_1
    if-lez v0, :cond_2

    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {v7, v8}, Lcom/adobe/internal/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/adobe/internal/xmp/impl/XMPNode;->removeQualifiers()V

    invoke-virtual {v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v5, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v8, "xml:lang"

    const-string/jumbo v9, "x-default"

    new-instance v10, Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-direct {v10}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>()V

    invoke-virtual {v10, v11}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setQualifier(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v10

    invoke-direct {v5, v8, v9, v10}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {v6, v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    invoke-virtual {v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setHasQualifiers(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    invoke-virtual {v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/adobe/internal/xmp/options/PropertyOptions;->setHasLanguage(Z)Lcom/adobe/internal/xmp/options/PropertyOptions;

    :cond_3
    invoke-virtual {v7, v6}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    new-instance v8, Lcom/adobe/internal/xmp/options/PropertyOptions;

    const/16 v9, 0x1e00

    invoke-direct {v8, v9}, Lcom/adobe/internal/xmp/options/PropertyOptions;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/adobe/internal/xmp/impl/XMPNode;->setOptions(Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    :cond_4
    invoke-static {v7}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v8, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "xmpDM:copyright"

    invoke-static {v2, v8, v12}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p0, v3}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->migrateAudioCopyright(Lcom/adobe/internal/xmp/XMPMeta;Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v8, "http://ns.adobe.com/xap/1.0/rights/"

    invoke-virtual {v2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "xmpRights:UsageTerms"

    invoke-static {v2, v8, v12}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/internal/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/adobe/internal/xmp/impl/XMPNormalizer;->repairAltText(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private static transplantArrayItemAlias(Ljava/util/Iterator;Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->getOptions()Lcom/adobe/internal/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/internal/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v2, "Alias to x-default already has a language qualifier"

    const/16 v3, 0xcb

    invoke-direct {v1, v2, v3}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    new-instance v0, Lcom/adobe/internal/xmp/impl/XMPNode;

    const-string/jumbo v1, "xml:lang"

    const-string/jumbo v2, "x-default"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/internal/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    invoke-virtual {p1, v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const-string/jumbo v1, "[]"

    invoke-virtual {p1, v1}, Lcom/adobe/internal/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/adobe/internal/xmp/impl/XMPNode;->addChild(Lcom/adobe/internal/xmp/impl/XMPNode;)V

    return-void
.end method

.method private static tweakOldXMP(Lcom/adobe/internal/xmp/impl/XMPNode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/internal/xmp/XMPException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x24

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "uuid:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/adobe/internal/xmp/impl/Utils;->checkUUIDFormat(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v4, "InstanceID"

    invoke-static {v3, v4}, Lcom/adobe/internal/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/internal/xmp/impl/xpath/XMPPath;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v5}, Lcom/adobe/internal/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/internal/xmp/impl/XMPNode;Lcom/adobe/internal/xmp/impl/xpath/XMPPath;ZLcom/adobe/internal/xmp/options/PropertyOptions;)Lcom/adobe/internal/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->setOptions(Lcom/adobe/internal/xmp/options/PropertyOptions;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uuid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adobe/internal/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->removeChildren()V

    invoke-virtual {v0}, Lcom/adobe/internal/xmp/impl/XMPNode;->removeQualifiers()V

    invoke-virtual {p0, v5}, Lcom/adobe/internal/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v3, Lcom/adobe/internal/xmp/XMPException;

    const-string/jumbo v4, "Failure creating xmpMM:InstanceID"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Lcom/adobe/internal/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method
