.class public final enum Lcom/sec/samsung/gallery/core/TabTagType;
.super Ljava/lang/Enum;
.source "TabTagType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/core/TabTagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/samsung/gallery/core/TabTagType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum TAB_SELECT_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_DOCUMENTS:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_FLOWERS:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_FOOD:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_LOCATION:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_OTHER_DEVICE:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_PETS:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_SCENERY:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_SCLOUDVIEW:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_SECRET_BOX:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_SLINK:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_SNS:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

.field public static final enum TAB_TAG_VEHICLES:Lcom/sec/samsung/gallery/core/TabTagType;

.field private static final mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/core/TabTagType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_TIMELINE"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_ALBUM"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_CHANNEL"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_CATEGORY"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_SELECT_ALL"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_SELECT_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_LOCATION"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_LOCATION:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_FACE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_FAVORITES"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_SECRET_BOX"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SECRET_BOX:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_SNS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SNS:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_ALL"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_SCENERY"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCENERY:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_DOCUMENTS"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_DOCUMENTS:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_FOOD"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FOOD:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_PETS"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_PETS:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_VEHICLES"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_VEHICLES:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_FLOWERS"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FLOWERS:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_OTHER_DEVICE"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_DEVICE:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_SEARCH"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_FILTER"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_SLINK"

    const/16 v2, 0x14

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SLINK:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_NEARBY"

    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_OTHER_CATEGORY"

    const/16 v2, 0x16

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_EVENT"

    const/16 v2, 0x17

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_MTP"

    const/16 v2, 0x18

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_RECYCLEBIN"

    const/16 v2, 0x19

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_SIGHTMODE"

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Lcom/sec/samsung/gallery/core/TabTagType;

    const-string/jumbo v1, "TAB_TAG_SCLOUDVIEW"

    const/16 v2, 0x1b

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/core/TabTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCLOUDVIEW:Lcom/sec/samsung/gallery/core/TabTagType;

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_SELECT_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_LOCATION:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SECRET_BOX:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SNS:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCENERY:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_DOCUMENTS:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FOOD:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_PETS:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_VEHICLES:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FLOWERS:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_DEVICE:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SLINK:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCLOUDVIEW:Lcom/sec/samsung/gallery/core/TabTagType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->$VALUES:[Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a0443

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a043f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a0441

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a031f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a0442

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCENERY:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a038d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_DOCUMENTS:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a012d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FOOD:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a01be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_PETS:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a0327

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_VEHICLES:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a04b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FLOWERS:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a01bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a0440

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SLINK:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a0385

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a0043

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a0441

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TABTAG_STARING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    const v2, 0x7f0a04e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/samsung/gallery/core/TabTagType;->mIndex:I

    return-void
.end method

.method public static from(Lcom/sec/samsung/gallery/core/TabTagType;)I
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v1, "TabTagType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tabTagType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mArrayList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "TabTagType error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static from(I)Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 3

    if-ltz p0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p0, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "TabTagType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mArrayList.size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mArrayList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unknown tab"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/core/TabTagType;

    return-object v0
.end method

.method public static initializeEnum()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_SELECT_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_LOCATION:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SECRET_BOX:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SNS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCENERY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_DOCUMENTS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FOOD:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_PETS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_VEHICLES:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FLOWERS:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCategoryView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFavoriteInCategory:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSamsungLinkApi:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SLINK:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearbyDMR:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowShotModeAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->mArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCLOUDVIEW:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/core/TabTagType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->$VALUES:[Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/core/TabTagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/core/TabTagType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/core/TabTagType;->mIndex:I

    return v0
.end method
