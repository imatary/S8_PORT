.class public Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;
.super Ljava/lang/Object;
.source "TiledImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImageRendererWrapper"
.end annotation


# instance fields
.field public centerX:F

.field public centerY:F

.field image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

.field isLeft:Z

.field isReadyCallback:Ljava/lang/Runnable;

.field isWideHome:Z

.field public rotation:I

.field public scale:F

.field public source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
