.class Lcom/samsung/android/gallery360viewer/view/SphericalGlView$2;
.super Ljava/lang/Object;
.source "SphericalGlView.java"

# interfaces
.implements Lcom/samsung/android/gallery360viewer/view/SphericalGlView$GlIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->setGlIdleListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;


# direct methods
.method constructor <init>(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$2;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrameLocked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$2;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-static {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->access$100(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Ljava/util/ArrayDeque;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$2;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-static {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->access$100(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$2;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-static {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->access$200(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->access$300(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
