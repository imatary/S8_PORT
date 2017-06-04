.class public Lcom/sec/samsung/gallery/access/dcm/DCMInterface;
.super Ljava/lang/Object;
.source "DCMInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/access/dcm/DCMInterface$SubCategoryType;,
        Lcom/sec/samsung/gallery/access/dcm/DCMInterface$CategoryType;,
        Lcom/sec/samsung/gallery/access/dcm/DCMInterface$ImageColumns;,
        Lcom/sec/samsung/gallery/access/dcm/DCMInterface$CategoryColumns;
    }
.end annotation


# static fields
.field public static final CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/samsung/gallery/core/TabTagType;",
            ">;"
        }
    .end annotation
.end field

.field public static final DCM_CATEGORY_TABLE_URI:Landroid/net/Uri;

.field public static final DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

.field public static final DCM_VIDEO_TABLE_URI:Landroid/net/Uri;

.field public static final SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DCMInterface"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://com.sec.dcm.provider.DCMProvider.data/imagedocument"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.sec.dcm.provider.DCMProvider.data/videodocument"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_VIDEO_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.sec.dcm.provider.DCMProvider.data/category"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_CATEGORY_TABLE_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "People"

    const v2, 0x7f0a031f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Scenery"

    const v2, 0x7f0a038d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Documents"

    const v2, 0x7f0a012d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Food"

    const v2, 0x7f0a01be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Pets"

    const v2, 0x7f0a0327

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Vehicles"

    const v2, 0x7f0a04b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Flower"

    const v2, 0x7f0a01bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "People"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Scenery"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCENERY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Documents"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_DOCUMENTS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Food"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FOOD:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Pets"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_PETS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Vehicles"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_VEHICLES:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Flower"

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FLOWERS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Coast"

    const v2, 0x7f0a0061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Forest"

    const v2, 0x7f0a01bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Mountain"

    const v2, 0x7f0a026d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Night scene"

    const v2, 0x7f0a02d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Open country"

    const v2, 0x7f0a0314

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Building"

    const v2, 0x7f0a0069

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Snow"

    const v2, 0x7f0a03fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Street"

    const v2, 0x7f0a0434

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Dogs"

    const v2, 0x7f0a012e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Cats"

    const v2, 0x7f0a0092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Cars"

    const v2, 0x7f0a0088

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Bikes"

    const v2, 0x7f0a0064

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Waterfall"

    const v2, 0x7f0a04de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Airplanes"

    const v2, 0x7f0a0037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Trains"

    const v2, 0x7f0a0460

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Boats"

    const v2, 0x7f0a0067

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "City overlook"

    const v2, 0x7f0a009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Architecture"

    const v2, 0x7f0a0055

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Indoor"

    const v2, 0x7f0a0218

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "Plant"

    const v2, 0x7f0a0333

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static categoryNotify(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public static chanageCategoryTypeArray(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "scene_type"

    invoke-virtual {v6, v10, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    :goto_0
    return v9

    :cond_0
    if-ne v5, v8, :cond_1

    const-string/jumbo v10, "uri =? AND scene_type = ?"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    sget-object v10, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v6, v11, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_2
    if-lez v3, :cond_4

    :goto_3
    move v9, v8

    goto :goto_0

    :cond_1
    const-string/jumbo v10, "( "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v5, :cond_3

    add-int/lit8 v10, v5, -0x1

    if-ne v1, v10, :cond_2

    const-string/jumbo v10, "uri =? "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    const-string/jumbo v10, "uri =? OR "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_3
    const-string/jumbo v10, ") AND scene_type =?"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v10, "DCMInterface"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move v8, v9

    goto :goto_3
.end method

.method public static deleteCategoryType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "scene_type"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v6, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    const-string/jumbo v7, "scene_type = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v1, v6, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "DCMInterface"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public static deleteCategoryTypeArray(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "scene_type"

    const-string/jumbo v11, ""

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    :goto_0
    return v9

    :cond_0
    if-ne v5, v8, :cond_1

    const-string/jumbo v10, "uri =? AND scene_type = ?"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    :try_start_0
    sget-object v10, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v6, v11, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_4

    :goto_2
    move v9, v8

    goto :goto_0

    :cond_1
    const-string/jumbo v10, "( "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_3

    add-int/lit8 v10, v5, -0x1

    if-ne v1, v10, :cond_2

    const-string/jumbo v10, "uri =? "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    const-string/jumbo v10, "uri =? OR "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    const-string/jumbo v10, ") AND scene_type =?"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v8, "DCMInterface"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_2
.end method

.method public static getCategoryType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "scene_type"

    aput-object v4, v2, v3

    const-string/jumbo v3, "uri = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "DCMInterface"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    const/4 v1, 0x0

    if-eqz v8, :cond_0

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    :cond_0
    if-eqz v8, :cond_1

    if-eqz v10, :cond_2

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return-object v7

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v1, "DCMInterface"

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_1
    if-eqz v8, :cond_3

    if-eqz v2, :cond_4

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v1

    :catch_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v10

    goto :goto_1
.end method

.method public static getLocationPOI(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    sget-object v1, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    :goto_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "poiname"

    aput-object v4, v2, v3

    const-string/jumbo v3, "uri = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "DCMInterface"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    const/4 v2, 0x0

    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string/jumbo v3, "null"

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    if-eqz v7, :cond_3

    if-eqz v10, :cond_5

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    return-object v9

    :cond_4
    sget-object v1, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_VIDEO_TABLE_URI:Landroid/net/Uri;

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    const-string/jumbo v2, "DCMInterface"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v3

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    :goto_2
    if-eqz v7, :cond_6

    if-eqz v3, :cond_7

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_6
    :goto_3
    :try_start_7
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v3, v10

    goto :goto_2
.end method

.method public static makeStringForType(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static updateCategoryType(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p3}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->makeStringForType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "scene_type"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, ""

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_0

    const-string/jumbo v8, "uri = ?"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v4, 0x0

    :try_start_0
    sget-object v8, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v3, v8, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    if-lez v4, :cond_3

    const/4 v8, 0x1

    :goto_2
    return v8

    :cond_0
    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    const-string/jumbo v8, "uri = ? AND scene_type = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "uri = ? AND ( "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_2

    const-string/jumbo v8, "scene_type = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " OR "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    const-string/jumbo v8, "scene_type = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v8, "DCMInterface"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method
