.class Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileQueue"
.end annotation


# instance fields
.field private mHead:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;-><init>()V

    return-void
.end method

.method private contains(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->mHead:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mNext:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->mHead:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    return-void
.end method

.method public pop()Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->mHead:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mNext:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->mHead:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    :cond_0
    return-object v0
.end method

.method public push(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->contains(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Cropper2_TileRenderer"

    const-string/jumbo v2, "Attempting to add a tile already in the queue!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->mHead:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->mHead:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    iput-object v1, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mNext:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->mHead:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    return v0
.end method
