.class Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
.super Ljava/lang/Object;
.source "SparseArrayBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/photos/data/SparseArrayBitmapPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

.field private nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

.field private prevInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

.field private prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    return-object p1
.end method
