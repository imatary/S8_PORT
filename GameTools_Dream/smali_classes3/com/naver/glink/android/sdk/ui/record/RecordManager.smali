.class public Lcom/naver/glink/android/sdk/ui/record/RecordManager;
.super Ljava/lang/Object;
.source "RecordManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;,
        Lcom/naver/glink/android/sdk/ui/record/RecordManager$d;,
        Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;,
        Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;,
        Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;
    }
.end annotation


# static fields
.field public static final a:I = 0x15a41

.field private static final b:Ljava/lang/String; = "naverRecord"

.field private static c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;


# instance fields
.field private d:Landroid/media/projection/MediaProjectionManager;

.field private e:Landroid/media/projection/MediaProjection;

.field private f:Landroid/hardware/display/VirtualDisplay;

.field private g:Landroid/hardware/display/VirtualDisplay;

.field private h:Landroid/media/MediaRecorder;

.field private i:Lcom/naver/glink/android/sdk/ui/record/c;

.field private j:Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

.field private r:Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

.field private s:Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;-><init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Lcom/naver/glink/android/sdk/ui/record/RecordManager$1;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->s:Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->k:I

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a()V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Landroid/hardware/display/VirtualDisplay;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->g:Landroid/hardware/display/VirtualDisplay;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->g:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method private a(Z)Landroid/hardware/display/VirtualDisplay;
    .locals 9

    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->f()Lcom/naver/glink/android/sdk/ui/record/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/record/c;->e()Landroid/graphics/Point;

    move-result-object v3

    if-eqz p1, :cond_0

    iput v1, v3, Landroid/graphics/Point;->x:I

    iput v1, v3, Landroid/graphics/Point;->y:I

    :cond_0
    if-nez v3, :cond_1

    :goto_0
    return-object v8

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e:Landroid/media/projection/MediaProjection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "naverRecord"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->k:I

    const/4 v5, 0x2

    if-eqz p1, :cond_2

    move-object v6, v8

    :goto_1
    if-eqz p1, :cond_3

    move-object v7, v8

    :goto_2
    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v8

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    goto :goto_1

    :cond_3
    new-instance v7, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;

    invoke-direct {v7, p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;-><init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e:Landroid/media/projection/MediaProjection;

    return-object p1
.end method

.method public static a()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iput-boolean v1, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->l:Z

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iput-boolean v1, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->m:Z

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iput-boolean v1, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->n:Z

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iput-boolean v1, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->o:Z

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->q:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Fragment;Lcom/naver/glink/android/sdk/ui/record/c;Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;)V
    .locals 4

    const-class v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b()Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->l:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->m:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->n:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "display"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    sget-object v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    array-length v0, v0

    iput v0, v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->p:I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Lcom/naver/glink/android/sdk/ui/record/c;)V

    invoke-static {p2}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->k:I

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->k:I

    :cond_2
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->d:Landroid/media/projection/MediaProjectionManager;

    if-nez v0, :cond_3

    sget-object v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "media_projection"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->d:Landroid/media/projection/MediaProjectionManager;

    :cond_3
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_4

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->d:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const v2, 0x15a41

    invoke-virtual {p0, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_2
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->m:Z

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e:Landroid/media/projection/MediaProjection;

    sget-object v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v2, v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->s:Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iput-object p0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->q:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/ui/record/c;)V
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/c;->a()Lcom/naver/glink/android/sdk/ui/record/c;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->i:Lcom/naver/glink/android/sdk/ui/record/c;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iput-object p0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->i:Lcom/naver/glink/android/sdk/ui/record/c;

    goto :goto_0
.end method

.method public static a(IILandroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0x15a41

    if-eq p0, v1, :cond_2

    const-string/jumbo v1, "naverRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown request code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iput-boolean v0, v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->m:Z

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    const-string/jumbo v1, "naverRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Screen Cast Permission Denied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-boolean v1, v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->l:Z

    if-nez v1, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->d:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v1, p1, p2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e:Landroid/media/projection/MediaProjection;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e:Landroid/media/projection/MediaProjection;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->s:Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->r:Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    return-object v0
.end method

.method public static b()Lcom/naver/glink/android/sdk/ui/record/RecordManager;
    .locals 2

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;)V
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->q:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Landroid/media/projection/MediaProjection;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method public static declared-synchronized c()V
    .locals 3

    const-class v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->l:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->n:Z

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->i()V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->j()V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->j:Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->cancel()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string/jumbo v0, "naverRecord"

    const-string/jumbo v2, "record stop error!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->n:Z

    return p1
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->s:Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;

    return-object v0
.end method

.method static synthetic d()Lcom/naver/glink/android/sdk/ui/record/RecordManager;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    return-object v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Lcom/naver/glink/android/sdk/ui/record/c;
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->f()Lcom/naver/glink/android/sdk/ui/record/c;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v1, 0x1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iput-boolean v1, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->l:Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->g:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$1;-><init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :try_start_0
    const-string/jumbo v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string/jumbo v0, "naverRecord"

    const-string/jumbo v1, "This is unity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->p:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Z)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->g:Landroid/hardware/display/VirtualDisplay;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    sget-object v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Z)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->f:Landroid/hardware/display/VirtualDisplay;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->f:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->j:Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->j:Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->cancel()V

    :cond_4
    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;

    sget-object v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;-><init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V

    iput-object v1, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->j:Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->j:Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$c;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "naverRecord"

    const-string/jumbo v1, "This is not unity. normal action."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private f()Lcom/naver/glink/android/sdk/ui/record/c;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->i:Lcom/naver/glink/android/sdk/ui/record/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/c;->a()Lcom/naver/glink/android/sdk/ui/record/c;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->i:Lcom/naver/glink/android/sdk/ui/record/c;

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->i:Lcom/naver/glink/android/sdk/ui/record/c;

    return-object v0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->l:Z

    return v0
.end method

.method private declared-synchronized g()Z
    .locals 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_0
    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->f()Lcom/naver/glink/android/sdk/ui/record/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/record/c;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->f()Lcom/naver/glink/android/sdk/ui/record/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/record/c;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-static {v1}, Lcom/naver/glink/android/sdk/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    const v2, 0x1f400

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :cond_1
    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->f()Lcom/naver/glink/android/sdk/ui/record/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/record/c;->e()Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->f()Lcom/naver/glink/android/sdk/ui/record/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/record/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager$2;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$2;-><init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/record/RecordManager$3;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$3;-><init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a()V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->r:Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->r:Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    invoke-interface {v1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->h:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->f:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->f:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->r:Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    return-void
.end method

.method public c(Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;)Z
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->q:Lcom/naver/glink/android/sdk/ui/record/RecordManager$RECORD_TYPE;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->o:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
