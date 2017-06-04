.class public Lcom/sec/android/gallery3d/app/Config$PhotoPage;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoPage"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/android/gallery3d/app/Config$PhotoPage;


# instance fields
.field public final filmstripBarSize:I

.field public final filmstripBottomMargin:I

.field public filmstripContentSize:I

.field public final filmstripMidMargin:I

.field public filmstripThumbSize:I

.field public final filmstripTopMargin:I

.field public final placeholderColor:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripTopMargin:I

    const v1, 0x7f0b0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripMidMargin:I

    const v1, 0x7f0b0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripBottomMargin:I

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripThumbSize:I

    const v1, 0x7f0b0112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripContentSize:I

    const v1, 0x7f0b010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripBarSize:I

    const v1, 0x7f10001f

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->placeholderColor:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/Config$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/Config$PhotoPage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/android/gallery3d/app/Config$PhotoPage;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/app/Config$PhotoPage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->sInstance:Lcom/sec/android/gallery3d/app/Config$PhotoPage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/Config$PhotoPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->sInstance:Lcom/sec/android/gallery3d/app/Config$PhotoPage;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->sInstance:Lcom/sec/android/gallery3d/app/Config$PhotoPage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
