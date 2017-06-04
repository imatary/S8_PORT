.class Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;
.super Ljava/lang/Object;
.source "PositionControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObjectControl"
.end annotation


# static fields
.field private static final DEFAULT_COUNT:I = 0x20

.field private static final THM_VISIBITY_LVL:I = 0x1


# instance fields
.field final mActiveObject:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private final mCount:I

.field private final mGlObject:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

.field final mInactiveObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;",
            ">;"
        }
    .end annotation
.end field

.field private mValidCount:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mInactiveObject:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mMaxObject:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mCount:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->createRectangles()[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mGlObject:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->clearActiveObject()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->activateObject(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->clearActiveObject()V

    return-void
.end method

.method private activateObject(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mValidCount:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mGlObject:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    array-length v5, v5

    if-lt v4, v5, :cond_0

    const-string/jumbo v4, "PositionControllerBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "activateObject array out of bound exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mValidCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mGlObject:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mGlObject:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mValidCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mValidCount:I

    aput-object v3, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEmptyFill(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumRoundRadius:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumRoundRadius:F

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(F)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setRoundedOption(IF)V

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVisibility(ZI)V

    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_2
    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iput p1, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput p1, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v6, 0x7f1000ab

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEmptyFillColor(I)V

    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerHover:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V

    :cond_3
    :goto_2
    move-object v4, v2

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mInactiveObject:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-object v2, v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mInactiveObject:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    const-string/jumbo v4, "PositionControllerBase"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method

.method private clearActiveObject()V
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mCount:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mGlObject:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    aget-object v0, v2, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput v4, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVisibility(ZI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private createRectangles()[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mCount:I

    new-array v1, v3, [Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v3, 0x20

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mValidCount:I

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mValidCount:I

    if-ge v2, v3, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->this$0:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    aput-object v0, v1, v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method inActivateObject(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PositionControllerBase"

    const-string/jumbo v1, "activeObject is already empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mInactiveObject:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVisibility(ZI)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_1
    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mReorderIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    invoke-virtual {p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setFocusBorderVisible(Z)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V

    :cond_2
    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorState(Lcom/sec/android/gallery3d/glcore/GlView;)V

    const/4 v0, -0x1

    iput v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    goto :goto_0
.end method

.method setDefaultCheckStatus()V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCheckAnimAvailable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
