.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;
.super Ljava/lang/Object;
.source "GlComposeAlbumView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragInfo"
.end annotation


# instance fields
.field public mActive:Z

.field private mDnAreaY:F

.field private mThumbOjbectHeight:F

.field private mUpAreaY:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)V

    return-void
.end method


# virtual methods
.method public getIntensity(F)F
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mHeightSpace:F

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeight()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mHeightSpace:F

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeight()F

    move-result v1

    sub-float p1, v0, v1

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mThumbOjbectHeight:F

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mUpAreaY:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mUpAreaY:F

    sub-float v0, p1, v0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mDnAreaY:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mDnAreaY:F

    sub-float v0, p1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mViewMode:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewThumbnailHeight(I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mViewMode:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumViewNameTextboxHeight(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mThumbOjbectHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mHeightSpace:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mThumbOjbectHeight:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mUpAreaY:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->mHeightSpace:F

    neg-float v0, v0

    div-float/2addr v0, v3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mThumbOjbectHeight:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DragInfo;->mDnAreaY:F

    return-void
.end method
