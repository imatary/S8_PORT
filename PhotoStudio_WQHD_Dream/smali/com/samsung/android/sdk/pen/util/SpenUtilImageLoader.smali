.class public Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;
.super Ljava/lang/Object;
.source "SpenUtilImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;,
        Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;
    }
.end annotation


# instance fields
.field private mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

.field public mLoaded:Z

.field private mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

.field private final mSdkVersion:I

.field private mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/util/SPenUtilImage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mSdkVersion:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mLoaded:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    new-instance v0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    return-void
.end method


# virtual methods
.method public addViewBackgroundSelectableImageLoad(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$400(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mNormalPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$500(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mPressPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$600(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mFocusPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$700(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$800(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$900(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addViewBackgroundSelectableImageLoad(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$400(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mNormalPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$500(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mPressPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$600(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mFocusPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$700(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$800(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$900(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addViewSetBackgroundImageLoad(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$000(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mImagePathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$100(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$200(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$300(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addViewSetBackgroundImageLoad(Landroid/view/View;Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$000(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mImagePathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$100(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$200(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$300(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$000(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # setter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$002(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mImagePathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$100(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # setter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mImagePathList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$102(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$200(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # setter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$202(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$300(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # setter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$302(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$400(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # setter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$402(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mNormalPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$500(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # setter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mNormalPathList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$502(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mPressPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$600(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # setter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mPressPathList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$602(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mFocusPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$700(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # setter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mFocusPathList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$702(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$800(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # setter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$802(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$900(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # setter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$902(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    return-void
.end method

.method public loadImage()V
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/16 v14, 0x10

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mLoaded:Z

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mLoaded:Z

    const/4 v12, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$000(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$000(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$200(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$300(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mSdkVersion:I

    if-ge v0, v14, :cond_3

    if-gez v4, :cond_2

    if-gez v5, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mImagePathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$100(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mImagePathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$100(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$200(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$300(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    if-gez v4, :cond_4

    if-gez v5, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mImagePathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$100(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mImagePathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$100(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$200(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mOneStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;->access$300(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$OneStateImage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_5
    const/4 v12, 0x0

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$400(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$400(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$800(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$900(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mSdkVersion:I

    if-ge v0, v14, :cond_7

    if-gez v4, :cond_6

    if-gez v5, :cond_6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mNormalPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$500(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mPressPathList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$600(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mFocusPathList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$700(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mNormalPathList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$500(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mPressPathList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$600(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mFocusPathList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$700(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_7
    if-gez v4, :cond_8

    if-gez v5, :cond_8

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mNormalPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$500(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mPressPathList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$600(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mFocusPathList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$700(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mDrawableImg:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mNormalPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$500(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mPressPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$600(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mFocusPathList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$700(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mWidthList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$800(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader;->mStateImage:Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;

    # getter for: Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->mHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;->access$900(Lcom/samsung/android/sdk/pen/util/SpenUtilImageLoader$StateImage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableSelectImg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3
.end method
