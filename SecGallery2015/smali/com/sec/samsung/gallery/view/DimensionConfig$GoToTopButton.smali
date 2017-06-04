.class public Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/DimensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoToTopButton"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;


# instance fields
.field public final go_to_top_button_margin_bottom:I

.field public final go_to_top_button_size:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;->go_to_top_button_size:I

    const v1, 0x7f0b0150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;->go_to_top_button_margin_bottom:I

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$GoToTopButton;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
