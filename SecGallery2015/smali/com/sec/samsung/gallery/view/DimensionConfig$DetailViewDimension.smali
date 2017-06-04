.class public Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;
.super Ljava/lang/Object;
.source "DimensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/DimensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailViewDimension"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;


# instance fields
.field public final detail_view_mode_count:I

.field public final mDetailViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->detail_view_mode_count:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->detail_view_mode_count:I

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->mDetailViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->detail_view_mode_count:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->mDetailViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;

    new-instance v3, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->mDetailViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;

    aget-object v2, v2, v0

    const v3, 0x7f0f0005

    # invokes: Lcom/sec/samsung/gallery/view/DimensionConfig;->getIntFromTypeArray(Landroid/content/res/Resources;II)I
    invoke-static {v1, v3, v0}, Lcom/sec/samsung/gallery/view/DimensionConfig;->access$000(Landroid/content/res/Resources;II)I

    move-result v3

    iput v3, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;->detail_view_icon_hpadding_left:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->mDetailViewSpec:[Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;

    aget-object v2, v2, v0

    const v3, 0x7f0f0006

    # invokes: Lcom/sec/samsung/gallery/view/DimensionConfig;->getIntFromTypeArray(Landroid/content/res/Resources;II)I
    invoke-static {v1, v3, v0}, Lcom/sec/samsung/gallery/view/DimensionConfig;->access$000(Landroid/content/res/Resources;II)I

    move-result v3

    iput v3, v2, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension$Spec;->detail_view_icon_vpadding_top:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;->sInstance:Lcom/sec/samsung/gallery/view/DimensionConfig$DetailViewDimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
