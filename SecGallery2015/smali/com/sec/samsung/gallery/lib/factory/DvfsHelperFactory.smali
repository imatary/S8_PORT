.class public Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;
.super Ljava/lang/Object;
.source "DvfsHelperFactory.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/factory/LibFactory;


# static fields
.field public static final ACTION_GALLERY_TOUCH:Ljava/lang/String;

.field public static final ACTION_GALLERY_TOUCH_TAIL:Ljava/lang/String;

.field public static final ACTION_LISTVIEW_SCROLL:Ljava/lang/String;

.field public static final LIST_SCROLL_BOOSTER_CORE_NUM:I

.field public static final TYPE_BUS_MIN:I

.field public static final TYPE_CPU_CORE_NUM_MIN:I

.field public static final TYPE_CPU_MIN:I

.field public static final TYPE_GPU_MIN:I

.field public static final TYPE_HINT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_BUS_MIN:I

    const/16 v0, 0xe

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_CPU_CORE_NUM_MIN:I

    const/16 v0, 0xc

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_CPU_MIN:I

    const/16 v0, 0x10

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_GPU_MIN:I

    const/16 v0, 0x15

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_HINT:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    const-string/jumbo v0, "GALLERY_SCROLL"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_LISTVIEW_SCROLL:Ljava/lang/String;

    const-string/jumbo v0, "GALLERY_TOUCH"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH:Ljava/lang/String;

    const-string/jumbo v0, "GALLERY_TOUCH_TAIL"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH_TAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;

    invoke-direct {v0, p1}, Lcom/sec/samsung/gallery/lib/se/SeDvfsHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
