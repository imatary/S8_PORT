.class Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;
.super Ljava/lang/Object;
.source "SecImaging.java"

# interfaces
.implements Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)Lcom/samsung/android/camera/filter/SemFilterManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/camera/filter/SemFilterManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Lcom/samsung/android/camera/filter/SemFilterManager;)Lcom/samsung/android/camera/filter/SemFilterManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)Lcom/samsung/android/camera/filter/SemFilterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableFilters()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mOnSecImagingManagerListener:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mOnSecImagingManagerListener:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;->onLanguageChange()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mOnSecImagingManagerListener:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;->onPackageChange()V

    goto :goto_0
.end method
