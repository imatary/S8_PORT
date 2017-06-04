.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$35;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->refreshActionBarThemeForVisualSearch(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

.field final synthetic val$style:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$35;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$35;->val$style:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$35;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$18800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$35;->val$style:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$35;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setUpBtnColor(F)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$18900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$35;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setOverFlowColor(F)V
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$19000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;F)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method
