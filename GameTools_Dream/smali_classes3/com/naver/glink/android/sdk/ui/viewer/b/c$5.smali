.class Lcom/naver/glink/android/sdk/ui/viewer/b/c$5;
.super Ljava/lang/Object;
.source "VideoViewHolder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/b/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$5;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$5;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a:Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;

    invoke-virtual {v0, v3}, Lcom/naver/glink/android/sdk/ui/widget/video/PlugVideoView;->setFullscreen(Z)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$5;->b:Lcom/naver/glink/android/sdk/ui/viewer/b/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/b/c$5;->a:Landroid/content/Context;

    sget v2, Lcom/naver/glink/android/sdk/R$string;->unable_load_videos:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/viewer/b/c;->a(Ljava/lang/String;)V

    return v3
.end method
