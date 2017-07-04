.class Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;
.super Ljava/lang/Object;
.source "GlHoverGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Area"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;-><init>(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;->contains(II)Z

    move-result v0

    return v0
.end method

.method private contains(II)Z
    .locals 10

    const/high16 v9, 0x42700000    # 60.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-static {v7}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->access$700(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-static {v7}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->access$800(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    mul-float v1, v7, v8

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-static {v7}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->access$800(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    mul-float v6, v7, v8

    iget v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    mul-float/2addr v7, v9

    float-to-int v2, v7

    iget v7, v3, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    mul-float/2addr v7, v9

    float-to-int v5, v7

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$Area;->this$0:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    invoke-static {v7}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->access$700(Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    if-le p2, v0, :cond_2

    add-int v7, v0, v5

    if-lt p2, v7, :cond_3

    :cond_2
    iget v7, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v5

    if-gt p2, v7, :cond_3

    if-lt p1, v2, :cond_3

    iget v7, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v2

    if-le p1, v7, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    move v7, v4

    goto :goto_0
.end method
