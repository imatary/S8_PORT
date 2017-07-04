.class Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer$1;
.super Ljava/lang/Object;
.source "SeMediaPlayer.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "SeMediaPlayer"

    const-string/jumbo v1, "mOnResourceListener onAdd "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->access$000(Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;)Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->access$000(Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;)Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;->onAdd()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/samsung/android/media/SemMediaResourceHelper;)V
    .locals 2

    const-string/jumbo v0, "SeMediaPlayer"

    const-string/jumbo v1, "mOnResourceListener onError "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemove(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "SeMediaPlayer"

    const-string/jumbo v1, "mOnResourceListener onRemove "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->access$000(Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;)Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->access$000(Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;)Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;->onRemove()V

    :cond_0
    return-void
.end method
