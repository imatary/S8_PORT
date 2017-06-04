.class public Lcom/sec/samsung/gallery/drawer/StateInfo;
.super Ljava/lang/Object;
.source "StateInfo.java"


# static fields
.field public static final TAB_STATE_INFO_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/drawer/StateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public klass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field public tabIndex:I

.field public tabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

.field public title:Ljava/lang/Integer;

.field public viewByFilterType:Lcom/sec/samsung/gallery/core/ViewByFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/drawer/StateInfo$1;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/drawer/StateInfo$1;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/sec/samsung/gallery/core/TabTagType;Lcom/sec/samsung/gallery/core/ViewByFilterType;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Lcom/sec/samsung/gallery/core/TabTagType;",
            "Lcom/sec/samsung/gallery/core/ViewByFilterType;",
            "II)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/drawer/StateInfo;->klass:Ljava/lang/Class;

    iput-object v1, p0, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    iput-object v1, p0, Lcom/sec/samsung/gallery/drawer/StateInfo;->viewByFilterType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabIndex:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/drawer/StateInfo;->title:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/StateInfo;->klass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    iput-object p3, p0, Lcom/sec/samsung/gallery/drawer/StateInfo;->viewByFilterType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    iput p4, p0, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabIndex:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/StateInfo;->title:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/sec/samsung/gallery/core/TabTagType;Lcom/sec/samsung/gallery/core/ViewByFilterType;IILcom/sec/samsung/gallery/drawer/StateInfo$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/drawer/StateInfo;-><init>(Ljava/lang/Class;Lcom/sec/samsung/gallery/core/TabTagType;Lcom/sec/samsung/gallery/core/ViewByFilterType;II)V

    return-void
.end method

.method public static isSameTabPosition(Ljava/lang/Class;)I
    .locals 4

    const/4 v0, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/drawer/StateInfo;->TAB_STATE_INFO_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/drawer/StateInfo;

    iget-object v3, v2, Lcom/sec/samsung/gallery/drawer/StateInfo;->klass:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabIndex:I

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method
