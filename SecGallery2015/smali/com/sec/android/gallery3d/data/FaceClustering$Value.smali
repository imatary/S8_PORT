.class Lcom/sec/android/gallery3d/data/FaceClustering$Value;
.super Ljava/lang/Object;
.source "FaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/FaceClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Value"
.end annotation


# instance fields
.field private final mConfirmedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupId:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersonId:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/FaceClustering;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->this$0:Lcom/sec/android/gallery3d/data/FaceClustering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->mPersonId:I

    iput p3, p0, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->mGroupId:I

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->mConfirmedList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/gallery3d/data/FaceClustering$Value;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->mConfirmedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->mPersonId:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/data/FaceClustering$Value;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->mGroupId:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/gallery3d/data/FaceClustering$Value;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/FaceClustering$Value;->mGroupId:I

    return p1
.end method
