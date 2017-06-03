.class public Landroid/icu/util/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/Region$RegionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final OUTLYING_OCEANIA_REGION_ID:Ljava/lang/String; = "QO"

.field private static final UNKNOWN_REGION_ID:Ljava/lang/String; = "ZZ"

.field private static final WORLD_ID:Ljava/lang/String; = "001"

.field private static availableRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Region;",
            ">;>;"
        }
    .end annotation
.end field

.field private static numericCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regionAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regionDataIsLoaded:Z

.field private static regionIDMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private containedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private containingRegion:Landroid/icu/util/Region;

.field private id:Ljava/lang/String;

.field private preferredValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private type:Landroid/icu/util/Region$RegionType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Landroid/icu/util/Region;->regionDataIsLoaded:Z

    sput-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    sput-object v1, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    sput-object v1, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    sput-object v1, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    sput-object v1, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    iput-object v1, p0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    return-void
.end method

.method public static getAvailable(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Region$RegionType;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    sget-object v0, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Landroid/icu/util/Region;
    .locals 6

    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    sget-object v3, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Region;

    if-nez v2, :cond_1

    const-string/jumbo v1, ""

    const/16 v3, 0xa

    if-ge p0, v3, :cond_2

    const-string/jumbo v1, "00"

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Region;

    :cond_1
    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown region code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/16 v3, 0x64

    if-ge p0, v3, :cond_0

    const-string/jumbo v1, "0"

    goto :goto_0

    :cond_3
    iget-object v3, v2, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    sget-object v4, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    if-ne v3, v4, :cond_4

    iget-object v3, v2, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    iget-object v3, v2, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Region;

    :cond_4
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/icu/util/Region;
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    sget-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    if-nez v0, :cond_1

    sget-object v1, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown region id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    sget-object v2, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    :cond_3
    return-object v0
.end method

.method private static declared-synchronized loadRegionData()V
    .locals 60

    const-class v57, Landroid/icu/util/Region;

    monitor-enter v57

    :try_start_0
    sget-boolean v56, Landroid/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v56, :cond_0

    monitor-exit v57

    return-void

    :cond_0
    :try_start_1
    new-instance v56, Ljava/util/HashMap;

    invoke-direct/range {v56 .. v56}, Ljava/util/HashMap;-><init>()V

    sput-object v56, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    new-instance v56, Ljava/util/HashMap;

    invoke-direct/range {v56 .. v56}, Ljava/util/HashMap;-><init>()V

    sput-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    new-instance v56, Ljava/util/HashMap;

    invoke-direct/range {v56 .. v56}, Ljava/util/HashMap;-><init>()V

    sput-object v56, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    new-instance v56, Ljava/util/ArrayList;

    invoke-static {}, Landroid/icu/util/Region$RegionType;->values()[Landroid/icu/util/Region$RegionType;

    move-result-object v58

    move-object/from16 v0, v58

    array-length v0, v0

    move/from16 v58, v0

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v56, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    const/16 v35, 0x0

    const/16 v53, 0x0

    const/4 v15, 0x0

    const/16 v30, 0x0

    const/16 v44, 0x0

    const/16 v47, 0x0

    const/16 v45, 0x0

    const/16 v48, 0x0

    const/16 v55, 0x0

    const/16 v54, 0x0

    const/16 v25, 0x0

    const-string/jumbo v56, "android/icu/impl/data/icudt56b"

    const-string/jumbo v58, "metadata"

    sget-object v59, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v34

    const-string/jumbo v56, "alias"

    move-object/from16 v0, v34

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v35

    const-string/jumbo v56, "territory"

    move-object/from16 v0, v35

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v53

    const-string/jumbo v56, "android/icu/impl/data/icudt56b"

    const-string/jumbo v58, "supplementalData"

    sget-object v59, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v52

    const-string/jumbo v56, "codeMappings"

    move-object/from16 v0, v52

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v15

    const-string/jumbo v56, "idValidity"

    move-object/from16 v0, v52

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v30

    const-string/jumbo v56, "region"

    move-object/from16 v0, v30

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v44

    const-string/jumbo v56, "regular"

    move-object/from16 v0, v44

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v47

    const-string/jumbo v56, "macroregion"

    move-object/from16 v0, v44

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v45

    const-string/jumbo v56, "unknown"

    move-object/from16 v0, v44

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v48

    const-string/jumbo v56, "territoryContainment"

    move-object/from16 v0, v52

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v54

    const-string/jumbo v56, "001"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v55

    const-string/jumbo v56, "grouping"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v25

    invoke-virtual/range {v55 .. v55}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v47 .. v47}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v45 .. v45}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v48 .. v48}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_1
    :goto_0
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_3

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    const-string/jumbo v56, "~"

    move-object/from16 v0, v40

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v42

    if-lez v42, :cond_2

    new-instance v46, Ljava/lang/StringBuilder;

    move-object/from16 v0, v46

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v56, v42, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v21

    move-object/from16 v0, v46

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v56, v42, -0x1

    move-object/from16 v0, v46

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v32

    :goto_1
    move/from16 v0, v32

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v56, v32, 0x1

    move/from16 v0, v56

    int-to-char v0, v0

    move/from16 v32, v0

    add-int/lit8 v56, v42, -0x1

    move-object/from16 v0, v46

    move/from16 v1, v56

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v56

    monitor-exit v57

    throw v56

    :cond_2
    :try_start_2
    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v56, Ljava/util/ArrayList;

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v58

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v56, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_5

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    new-instance v39, Landroid/icu/util/Region;

    invoke-direct/range {v39 .. v39}, Landroid/icu/util/Region;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/icu/util/Region;->id:Ljava/lang/String;

    sget-object v56, Landroid/icu/util/Region$RegionType;->TERRITORY:Landroid/icu/util/Region$RegionType;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v56, "[0-9]{3}"

    move-object/from16 v0, v28

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v56

    if-eqz v56, :cond_4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v56

    move/from16 v0, v56

    move-object/from16 v1, v39

    iput v0, v1, Landroid/icu/util/Region;->code:I

    sget-object v56, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    move-object/from16 v0, v39

    iget v0, v0, Landroid/icu/util/Region;->code:I

    move/from16 v58, v0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    :goto_3
    sget-object v56, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/16 v56, -0x1

    move/from16 v0, v56

    move-object/from16 v1, v39

    iput v0, v1, Landroid/icu/util/Region;->code:I

    goto :goto_3

    :cond_5
    const/16 v27, 0x0

    :goto_4
    invoke-virtual/range {v53 .. v53}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v56

    move/from16 v0, v27

    move/from16 v1, v56

    if-ge v0, v1, :cond_c

    move-object/from16 v0, v53

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v56, "replacement"

    move-object/from16 v0, v49

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_6

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_8

    :cond_6
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_a

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/icu/util/Region;

    :goto_5
    sget-object v56, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    const-string/jumbo v56, " "

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :cond_7
    :goto_6
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_9

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_7

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    move-object/from16 v58, v0

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/icu/util/Region;

    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    sget-object v58, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/icu/util/Region;

    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_4

    :cond_a
    new-instance v39, Landroid/icu/util/Region;

    invoke-direct/range {v39 .. v39}, Landroid/icu/util/Region;-><init>()V

    move-object/from16 v0, v39

    iput-object v3, v0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v56, "[0-9]{3}"

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v56

    if-eqz v56, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v56

    move/from16 v0, v56

    move-object/from16 v1, v39

    iput v0, v1, Landroid/icu/util/Region;->code:I

    sget-object v56, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    move-object/from16 v0, v39

    iget v0, v0, Landroid/icu/util/Region;->code:I

    move/from16 v58, v0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    sget-object v56, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    const/16 v56, -0x1

    move/from16 v0, v56

    move-object/from16 v1, v39

    iput v0, v1, Landroid/icu/util/Region;->code:I

    goto :goto_7

    :cond_c
    const/16 v27, 0x0

    :goto_8
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v56

    move/from16 v0, v27

    move/from16 v1, v56

    if-ge v0, v1, :cond_e

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v56

    const/16 v58, 0x8

    move/from16 v0, v56

    move/from16 v1, v58

    if-ne v0, v1, :cond_d

    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v14

    const/16 v56, 0x0

    aget-object v12, v14, v56

    const/16 v56, 0x1

    aget-object v56, v14, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    const/16 v56, 0x2

    aget-object v11, v14, v56

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_d

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/icu/util/Region;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v56

    move/from16 v0, v56

    move-object/from16 v1, v39

    iput v0, v1, Landroid/icu/util/Region;->code:I

    sget-object v56, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    move-object/from16 v0, v39

    iget v0, v0, Landroid/icu/util/Region;->code:I

    move/from16 v58, v0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v56, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    :cond_e
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string/jumbo v58, "001"

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_f

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string/jumbo v58, "001"

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/icu/util/Region;

    sget-object v56, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    :cond_f
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string/jumbo v58, "ZZ"

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_10

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string/jumbo v58, "ZZ"

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/icu/util/Region;

    sget-object v56, Landroid/icu/util/Region$RegionType;->UNKNOWN:Landroid/icu/util/Region$RegionType;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    :cond_10
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_11
    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_11

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/icu/util/Region;

    sget-object v56, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    goto :goto_9

    :cond_12
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_13
    :goto_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_14

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_13

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/icu/util/Region;

    sget-object v56, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    goto :goto_a

    :cond_14
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string/jumbo v58, "QO"

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_15

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string/jumbo v58, "QO"

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/icu/util/Region;

    sget-object v56, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    :cond_15
    const/16 v27, 0x0

    :goto_b
    invoke-virtual/range {v54 .. v54}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v56

    move/from16 v0, v27

    move/from16 v1, v56

    if-ge v0, v1, :cond_19

    move-object/from16 v0, v54

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v37

    const-string/jumbo v56, "containedGroupings"

    move-object/from16 v0, v37

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-nez v56, :cond_16

    const-string/jumbo v56, "deprecated"

    move-object/from16 v0, v37

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_17

    :cond_16
    add-int/lit8 v27, v27, 0x1

    goto :goto_b

    :cond_17
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/icu/util/Region;

    const/16 v31, 0x0

    :goto_c
    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v56

    move/from16 v0, v31

    move/from16 v1, v56

    if-ge v0, v1, :cond_16

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v0, v56

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/util/Region;

    if-eqz v38, :cond_18

    if-eqz v10, :cond_18

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v38 .. v38}, Landroid/icu/util/Region;->getType()Landroid/icu/util/Region$RegionType;

    move-result-object v56

    sget-object v58, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    if-eq v0, v1, :cond_18

    move-object/from16 v0, v38

    iput-object v0, v10, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    :cond_18
    add-int/lit8 v31, v31, 0x1

    goto :goto_c

    :cond_19
    const/16 v27, 0x0

    :goto_d
    invoke-static {}, Landroid/icu/util/Region$RegionType;->values()[Landroid/icu/util/Region$RegionType;

    move-result-object v56

    move-object/from16 v0, v56

    array-length v0, v0

    move/from16 v56, v0

    move/from16 v0, v27

    move/from16 v1, v56

    if-ge v0, v1, :cond_1a

    sget-object v56, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    new-instance v58, Ljava/util/TreeSet;

    invoke-direct/range {v58 .. v58}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v27, v27, 0x1

    goto :goto_d

    :cond_1a
    sget-object v56, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    invoke-interface/range {v56 .. v56}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-eqz v56, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/util/Region;

    sget-object v56, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    iget-object v0, v7, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Enum;->ordinal()I

    move-result v58

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v56, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    iget-object v0, v7, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Enum;->ordinal()I

    move-result v58

    move-object/from16 v0, v56

    move/from16 v1, v58

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1b
    const/16 v56, 0x1

    sput-boolean v56, Landroid/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v57

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/util/Region;)I
    .locals 2

    iget-object v0, p0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/util/Region;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/util/Region;

    invoke-virtual {p0, p1}, Landroid/icu/util/Region;->compareTo(Landroid/icu/util/Region;)I

    move-result v0

    return v0
.end method

.method public contains(Landroid/icu/util/Region;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    iget-object v2, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    invoke-virtual {v0, p1}, Landroid/icu/util/Region;->contains(Landroid/icu/util/Region;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public getContainedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    iget-object v0, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContainedRegions(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Region$RegionType;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0}, Landroid/icu/util/Region;->getContainedRegions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Region;

    invoke-virtual {v1}, Landroid/icu/util/Region;->getType()Landroid/icu/util/Region$RegionType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/icu/util/Region;->getContainedRegions(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    return-object v4
.end method

.method public getContainingRegion()Landroid/icu/util/Region;
    .locals 1

    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    return-object v0
.end method

.method public getContainingRegion(Landroid/icu/util/Region$RegionType;)Landroid/icu/util/Region;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    iget-object v0, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    invoke-virtual {v0, p1}, Landroid/icu/util/Region;->getContainingRegion(Landroid/icu/util/Region$RegionType;)Landroid/icu/util/Region;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCode()I
    .locals 1

    iget v0, p0, Landroid/icu/util/Region;->code:I

    return v0
.end method

.method public getPreferredValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    iget-object v0, p0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    sget-object v1, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Landroid/icu/util/Region$RegionType;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    return-object v0
.end method
