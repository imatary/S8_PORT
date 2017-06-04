.class public Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumEntry"
.end annotation


# instance fields
.field private bitmapTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

.field public content:Lcom/sec/android/gallery3d/glrenderer/Texture;

.field private contentLoader:Lcom/sec/android/gallery3d/ui/BitmapLoader;

.field public isWaitDisplayed:Z

.field public item:Lcom/sec/android/gallery3d/data/MediaItem;

.field public path:Lcom/sec/android/gallery3d/data/Path;

.field public rotation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/ui/BitmapLoader;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/sec/android/gallery3d/ui/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/sec/android/gallery3d/ui/BitmapLoader;)Lcom/sec/android/gallery3d/ui/BitmapLoader;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->contentLoader:Lcom/sec/android/gallery3d/ui/BitmapLoader;

    return-object p1
.end method
