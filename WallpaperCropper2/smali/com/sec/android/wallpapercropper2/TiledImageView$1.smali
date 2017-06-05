.class Lcom/sec/android/wallpapercropper2/TiledImageView$1;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/TiledImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$1;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$1;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->freeTextures()V

    return-void
.end method
