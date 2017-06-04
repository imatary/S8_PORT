.class Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/TileImageView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;-><init>()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    return-void
.end method

.method public pop()Lcom/sec/android/gallery3d/ui/TileImageView$Tile;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mNext:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$2000(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    :cond_0
    return-object v0
.end method

.method public push(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    # setter for: Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mNext:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;
    invoke-static {p1, v1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$2002(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->mHead:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
