.class Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;
.super Ljava/lang/Object;
.source "FaceClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/FaceClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFaceValue"
.end annotation


# instance fields
.field private mFaceId:I

.field private mMaxSimilarity:I

.field private mPath:Lcom/sec/android/gallery3d/data/Path;

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/FaceClustering;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILcom/sec/android/gallery3d/data/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->this$0:Lcom/sec/android/gallery3d/data/FaceClustering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->mFaceId:I

    iput p3, p0, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->mMaxSimilarity:I

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->mPath:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/FaceClustering$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;-><init>(Lcom/sec/android/gallery3d/data/FaceClustering;IILcom/sec/android/gallery3d/data/Path;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->mMaxSimilarity:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->mMaxSimilarity:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->mPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->mPath:Lcom/sec/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->mFaceId:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/FaceClustering$ImageFaceValue;->mFaceId:I

    return p1
.end method
