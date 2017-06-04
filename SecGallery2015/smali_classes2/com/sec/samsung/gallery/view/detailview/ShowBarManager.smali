.class Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;
.super Ljava/lang/Object;
.source "ShowBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;,
        Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$SHOWBAR_TYPE;,
        Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowbarUpdateListener;
    }
.end annotation


# static fields
.field private static final AUTO:I = 0x0

.field private static final OFF:I = 0x2

.field private static final ON:I = 0x1

.field private static final SHOWBAR_INFO:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

.field private mInitialFilmRender:Z

.field private mIsFlippedImage:Z

.field private final mListener:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowbarUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    invoke-direct {v1, v4, v4, v4}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;-><init>(IIZ)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    invoke-direct {v1, v3, v3}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;-><init>(II)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;-><init>(IIZ)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    invoke-direct {v2, v5, v3}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    invoke-direct {v2, v3, v3}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    invoke-direct {v2, v3, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;-><init>(IIZ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    const/16 v1, 0x8

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    invoke-direct {v2, v3, v3, v5}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;-><init>(IIZ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    const/16 v1, 0x9

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    invoke-direct {v2, v4, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;-><init>(IIZ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowbarUpdateListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInitialFilmRender:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mIsFlippedImage:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mListener:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowbarUpdateListener;

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    return-void
.end method

.method private updateShowBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mListener:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowbarUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mListener:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowbarUpdateListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowbarUpdateListener;->updateShowBar()V

    :cond_0
    return-void
.end method


# virtual methods
.method public enableActioBarShow()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    iget v0, v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;->showActionBar:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableFastOptonViewShow()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    iget v0, v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;->showFastOptionView:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInitialFilmRender:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mIsFlippedImage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableShowBar()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->enableActioBarShow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->enableFastOptonViewShow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionBarShowAuto()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    iget v0, v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;->showActionBar:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionBarShowOn()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    iget v1, v1, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;->showActionBar:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->isDisabledAutoHide()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisabledAutoHide()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;->disableAutoHide:Z

    return v0
.end method

.method public isFastOptionViewOn()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    iget v1, v1, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;->showFastOptionView:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->isDisabledAutoHide()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastOptoinViewShowAuto()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    iget v0, v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;->showFastOptionView:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInitialFilmRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInitialFilmRender:Z

    return-void
.end method

.method public setIsFlippedImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mIsFlippedImage:Z

    return-void
.end method

.method public setShowBarMode(I)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->SHOWBAR_INFO:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->mInfo:Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;->updateShowBar()V

    return-void
.end method
